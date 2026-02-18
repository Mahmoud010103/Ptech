module ri5cy_axi_wrapper #(
    parameter N_EXT_PERF_COUNTERS = 0,
    parameter INSTR_RDATA_WIDTH   = 32,
    parameter C_S_AXI_INSTR_ADDR_WIDTH = 32,
    parameter C_S_AXI_INSTR_DATA_WIDTH = 32,
    parameter C_S_AXI_DATA_ADDR_WIDTH = 32,
    parameter C_S_AXI_DATA_DATA_WIDTH = 32
)(

    input  logic        aclk,
    input  logic        aresetn,
    
    input  logic [31:0] boot_addr_i,
    input  logic [3:0]  core_id_i,
    input  logic [5:0]  cluster_id_i,
    
    output logic [C_S_AXI_INSTR_ADDR_WIDTH-1:0]   m_axi_instr_awaddr,
    output logic [2:0]                            m_axi_instr_awprot,
    output logic                                  m_axi_instr_awvalid,
    input  logic                                  m_axi_instr_awready,
    output logic [C_S_AXI_INSTR_DATA_WIDTH-1:0]   m_axi_instr_wdata,
    output logic [(C_S_AXI_INSTR_DATA_WIDTH/8)-1:0] m_axi_instr_wstrb,
    output logic                                  m_axi_instr_wvalid,
    input  logic                                  m_axi_instr_wready,
    input  logic [1:0]                            m_axi_instr_bresp,
    input  logic                                  m_axi_instr_bvalid,
    output logic                                  m_axi_instr_bready,
    output logic [C_S_AXI_INSTR_ADDR_WIDTH-1:0]   m_axi_instr_araddr,
    output logic [2:0]                            m_axi_instr_arprot,
    output logic                                  m_axi_instr_arvalid,
    input  logic                                  m_axi_instr_arready,
    input  logic [C_S_AXI_INSTR_DATA_WIDTH-1:0]   m_axi_instr_rdata,
    input  logic [1:0]                            m_axi_instr_rresp,
    input  logic                                  m_axi_instr_rvalid,
    output logic                                  m_axi_instr_rready,
    
    // AXI4-Lite Master pour données
    output logic [C_S_AXI_DATA_ADDR_WIDTH-1:0]    m_axi_data_awaddr,
    output logic [2:0]                            m_axi_data_awprot,
    output logic                                  m_axi_data_awvalid,
    input  logic                                  m_axi_data_awready,
    output logic [C_S_AXI_DATA_DATA_WIDTH-1:0]    m_axi_data_wdata,
    output logic [(C_S_AXI_DATA_DATA_WIDTH/8)-1:0] m_axi_data_wstrb,
    output logic                                  m_axi_data_wvalid,
    input  logic                                  m_axi_data_wready,
    input  logic [1:0]                            m_axi_data_bresp,
    input  logic                                  m_axi_data_bvalid,
    output logic                                  m_axi_data_bready,
    output logic [C_S_AXI_DATA_ADDR_WIDTH-1:0]    m_axi_data_araddr,
    output logic [2:0]                            m_axi_data_arprot,
    output logic                                  m_axi_data_arvalid,
    input  logic                                  m_axi_data_arready,
    input  logic [C_S_AXI_DATA_DATA_WIDTH-1:0]    m_axi_data_rdata,
    input  logic [1:0]                            m_axi_data_rresp,
    input  logic                                  m_axi_data_rvalid,
    output logic                                  m_axi_data_rready,
    
    // Interruptions
    input  logic [31:0] irq_i,
    
    // Status
    output logic        core_busy_o,
    input  logic        fetch_enable_i
);

    // Signaux internes RI5CY
    logic        instr_req;
    logic        instr_gnt;
    logic        instr_rvalid;
    logic [31:0] instr_addr;
    logic [31:0] instr_rdata;
    
    logic        data_req;
    logic        data_gnt;
    logic        data_rvalid;
    logic        data_we;
    logic [3:0]  data_be;
    logic [31:0] data_addr;
    logic [31:0] data_wdata;
    logic [31:0] data_rdata;
    logic        data_err;
    
    // Signaux debug (désactivés)
    logic        debug_req = 1'b0;
    logic        debug_gnt;
    logic        debug_rvalid;
    logic [14:0] debug_addr = 15'h0;
    logic        debug_we = 1'b0;
    logic [31:0] debug_wdata = 32'h0;
    logic [31:0] debug_rdata;
    logic        debug_halted;
    logic        debug_halt = 1'b0;
    logic        debug_resume = 1'b0;

    // Instance du core RI5CY
    ri5cy_fpga_top #(
        .N_EXT_PERF_COUNTERS(N_EXT_PERF_COUNTERS),
        .INSTR_RDATA_WIDTH(INSTR_RDATA_WIDTH)
    ) ri5cy_core (
        .clk_i(aclk),
        .rst_ni(aresetn),
        .clock_en_i(1'b1),
        .test_en_i(1'b0),
        
        .boot_addr_i(boot_addr_i),
        .core_id_i(core_id_i),
        .cluster_id_i(cluster_id_i),
        
        .instr_req_o(instr_req),
        .instr_gnt_i(instr_gnt),
        .instr_rvalid_i(instr_rvalid),
        .instr_addr_o(instr_addr),
        .instr_rdata_i(instr_rdata),
        
        .data_req_o(data_req),
        .data_gnt_i(data_gnt),
        .data_rvalid_i(data_rvalid),
        .data_we_o(data_we),
        .data_be_o(data_be),
        .data_addr_o(data_addr),
        .data_wdata_o(data_wdata),
        .data_rdata_i(data_rdata),
        .data_err_i(data_err),
        
        .irq_i(irq_i),
        
        .debug_req_i(debug_req),
        .debug_gnt_o(debug_gnt),
        .debug_rvalid_o(debug_rvalid),
        .debug_addr_i(debug_addr),
        .debug_we_i(debug_we),
        .debug_wdata_i(debug_wdata),
        .debug_rdata_o(debug_rdata),
        .debug_halted_o(debug_halted),
        .debug_halt_i(debug_halt),
        .debug_resume_i(debug_resume),
        
        .fetch_enable_i(fetch_enable_i),
        .core_busy_o(core_busy_o),
        .ext_perf_counters_i('0)
    );

    // Bridge pour interface instruction : RI5CY -> AXI4-Lite
    ri5cy_to_axi_bridge #(
        .AXI_ADDR_WIDTH(C_S_AXI_INSTR_ADDR_WIDTH),
        .AXI_DATA_WIDTH(C_S_AXI_INSTR_DATA_WIDTH)
    ) instr_bridge (
        .clk(aclk),
        .rst_n(aresetn),
        
        .ri5cy_req_i(instr_req),
        .ri5cy_gnt_o(instr_gnt),
        .ri5cy_rvalid_o(instr_rvalid),
        .ri5cy_we_i(1'b0),  // Instructions = lecture seule
        .ri5cy_be_i(4'hF),
        .ri5cy_addr_i(instr_addr),
        .ri5cy_wdata_i(32'h0),
        .ri5cy_rdata_o(instr_rdata),
        .ri5cy_err_o(),
        
        // Interface AXI4-Lite
        .m_axi_awaddr(m_axi_instr_awaddr),
        .m_axi_awprot(m_axi_instr_awprot),
        .m_axi_awvalid(m_axi_instr_awvalid),
        .m_axi_awready(m_axi_instr_awready),
        .m_axi_wdata(m_axi_instr_wdata),
        .m_axi_wstrb(m_axi_instr_wstrb),
        .m_axi_wvalid(m_axi_instr_wvalid),
        .m_axi_wready(m_axi_instr_wready),
        .m_axi_bresp(m_axi_instr_bresp),
        .m_axi_bvalid(m_axi_instr_bvalid),
        .m_axi_bready(m_axi_instr_bready),
        .m_axi_araddr(m_axi_instr_araddr),
        .m_axi_arprot(m_axi_instr_arprot),
        .m_axi_arvalid(m_axi_instr_arvalid),
        .m_axi_arready(m_axi_instr_arready),
        .m_axi_rdata(m_axi_instr_rdata),
        .m_axi_rresp(m_axi_instr_rresp),
        .m_axi_rvalid(m_axi_instr_rvalid),
        .m_axi_rready(m_axi_instr_rready)
    );

    ri5cy_to_axi_bridge #(
        .AXI_ADDR_WIDTH(C_S_AXI_DATA_ADDR_WIDTH),
        .AXI_DATA_WIDTH(C_S_AXI_DATA_DATA_WIDTH)
    ) data_bridge (
        .clk(aclk),
        .rst_n(aresetn),
        
        // Interface RI5CY
        .ri5cy_req_i(data_req),
        .ri5cy_gnt_o(data_gnt),
        .ri5cy_rvalid_o(data_rvalid),
        .ri5cy_we_i(data_we),
        .ri5cy_be_i(data_be),
        .ri5cy_addr_i(data_addr),
        .ri5cy_wdata_i(data_wdata),
        .ri5cy_rdata_o(data_rdata),
        .ri5cy_err_o(data_err),
        
        // Interface AXI4-Lite
        .m_axi_awaddr(m_axi_data_awaddr),
        .m_axi_awprot(m_axi_data_awprot),
        .m_axi_awvalid(m_axi_data_awvalid),
        .m_axi_awready(m_axi_data_awready),
        .m_axi_wdata(m_axi_data_wdata),
        .m_axi_wstrb(m_axi_data_wstrb),
        .m_axi_wvalid(m_axi_data_wvalid),
        .m_axi_wready(m_axi_data_wready),
        .m_axi_bresp(m_axi_data_bresp),
        .m_axi_bvalid(m_axi_data_bvalid),
        .m_axi_bready(m_axi_data_bready),
        .m_axi_araddr(m_axi_data_araddr),
        .m_axi_arprot(m_axi_data_arprot),
        .m_axi_arvalid(m_axi_data_arvalid),
        .m_axi_arready(m_axi_data_arready),
        .m_axi_rdata(m_axi_data_rdata),
        .m_axi_rresp(m_axi_data_rresp),
        .m_axi_rvalid(m_axi_data_rvalid),
        .m_axi_rready(m_axi_data_rready)
    );

endmodule