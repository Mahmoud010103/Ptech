// Bridge pour convertir l'interface mémoire RI5CY vers AXI4-Lite
// Gère les transactions de lecture et d'écriture

module ri5cy_to_axi_bridge #(
    parameter AXI_ADDR_WIDTH = 32,
    parameter AXI_DATA_WIDTH = 32
)(
    input  logic        clk,
    input  logic        rst_n,
    
    // Interface RI5CY (OBI-like)
    input  logic        ri5cy_req_i,
    output logic        ri5cy_gnt_o,
    output logic        ri5cy_rvalid_o,
    input  logic        ri5cy_we_i,
    input  logic [3:0]  ri5cy_be_i,
    input  logic [31:0] ri5cy_addr_i,
    input  logic [31:0] ri5cy_wdata_i,
    output logic [31:0] ri5cy_rdata_o,
    output logic        ri5cy_err_o,
    
    // Interface AXI4-Lite Master
    output logic [AXI_ADDR_WIDTH-1:0]        m_axi_awaddr,
    output logic [2:0]                       m_axi_awprot,
    output logic                             m_axi_awvalid,
    input  logic                             m_axi_awready,
    output logic [AXI_DATA_WIDTH-1:0]        m_axi_wdata,
    output logic [(AXI_DATA_WIDTH/8)-1:0]    m_axi_wstrb,
    output logic                             m_axi_wvalid,
    input  logic                             m_axi_wready,
    input  logic [1:0]                       m_axi_bresp,
    input  logic                             m_axi_bvalid,
    output logic                             m_axi_bready,
    output logic [AXI_ADDR_WIDTH-1:0]        m_axi_araddr,
    output logic [2:0]                       m_axi_arprot,
    output logic                             m_axi_arvalid,
    input  logic                             m_axi_arready,
    input  logic [AXI_DATA_WIDTH-1:0]        m_axi_rdata,
    input  logic [1:0]                       m_axi_rresp,
    input  logic                             m_axi_rvalid,
    output logic                             m_axi_rready
);

    // États de la FSM
    typedef enum logic [2:0] {
        IDLE,
        WRITE_ADDR,
        WRITE_DATA,
        WRITE_RESP,
        READ_ADDR,
        READ_DATA
    } state_t;
    
    state_t state, next_state;
    
    // Registres pour stocker la transaction
    logic [31:0] addr_reg;
    logic [31:0] wdata_reg;
    logic [3:0]  be_reg;
    logic        we_reg;
    logic        req_pending;
    
    // Logique séquentielle
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            addr_reg <= '0;
            wdata_reg <= '0;
            be_reg <= '0;
            we_reg <= 1'b0;
            req_pending <= 1'b0;
        end else begin
            state <= next_state;
            
            // Capturer la requête
            if (ri5cy_req_i && ri5cy_gnt_o) begin
                addr_reg <= ri5cy_addr_i;
                wdata_reg <= ri5cy_wdata_i;
                be_reg <= ri5cy_be_i;
                we_reg <= ri5cy_we_i;
                req_pending <= 1'b1;
            end else if (state == READ_DATA && m_axi_rvalid) begin
                req_pending <= 1'b0;
            end else if (state == WRITE_RESP && m_axi_bvalid) begin
                req_pending <= 1'b0;
            end
        end
    end
    
    // Logique combinatoire - FSM
    always_comb begin
        // Valeurs par défaut
        next_state = state;
        ri5cy_gnt_o = 1'b0;
        ri5cy_rvalid_o = 1'b0;
        ri5cy_rdata_o = '0;
        ri5cy_err_o = 1'b0;
        
        m_axi_awaddr = '0;
        m_axi_awprot = 3'b000;
        m_axi_awvalid = 1'b0;
        m_axi_wdata = '0;
        m_axi_wstrb = '0;
        m_axi_wvalid = 1'b0;
        m_axi_bready = 1'b0;
        m_axi_araddr = '0;
        m_axi_arprot = 3'b000;
        m_axi_arvalid = 1'b0;
        m_axi_rready = 1'b0;
        
        case (state)
            IDLE: begin
                // Accepter une nouvelle requête
                ri5cy_gnt_o = 1'b1;
                
                if (ri5cy_req_i) begin
                    if (ri5cy_we_i) begin
                        next_state = WRITE_ADDR;
                    end else begin
                        next_state = READ_ADDR;
                    end
                end
            end
            
            WRITE_ADDR: begin
                m_axi_awaddr = addr_reg;
                m_axi_awprot = 3'b000;
                m_axi_awvalid = 1'b1;
                
                if (m_axi_awready) begin
                    next_state = WRITE_DATA;
                end
            end
            
            WRITE_DATA: begin
                m_axi_wdata = wdata_reg;
                m_axi_wstrb = be_reg;
                m_axi_wvalid = 1'b1;
                
                if (m_axi_wready) begin
                    next_state = WRITE_RESP;
                end
            end
            
            WRITE_RESP: begin
                m_axi_bready = 1'b1;
                
                if (m_axi_bvalid) begin
                    ri5cy_rvalid_o = 1'b1;
                    ri5cy_err_o = (m_axi_bresp != 2'b00);
                    next_state = IDLE;
                end
            end
            
            READ_ADDR: begin
                m_axi_araddr = addr_reg;
                m_axi_arprot = 3'b000;
                m_axi_arvalid = 1'b1;
                
                if (m_axi_arready) begin
                    next_state = READ_DATA;
                end
            end
            
            READ_DATA: begin
                m_axi_rready = 1'b1;
                
                if (m_axi_rvalid) begin
                    ri5cy_rvalid_o = 1'b1;
                    ri5cy_rdata_o = m_axi_rdata;
                    ri5cy_err_o = (m_axi_rresp != 2'b00);
                    next_state = IDLE;
                end
            end
            
            default: begin
                next_state = IDLE;
            end
        endcase
    end

endmodule