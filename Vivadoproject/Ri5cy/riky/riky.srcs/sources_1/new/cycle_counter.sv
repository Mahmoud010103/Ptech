module cycle_counter #(
    parameter COUNTER_WIDTH = 64
)(
    input  wire clk,
    input  wire rst_n,
    
    // Interface vers la mémoire partagée (écriture directe en BRAM)
    output reg [31:0] counter_lsb,  // Connecter à BRAM @ 0x42001E04
    output reg [31:0] counter_msb   // Connecter à BRAM @ 0x42001E08
);

    reg [COUNTER_WIDTH-1:0] cycle_count;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cycle_count <= 0;
            counter_lsb <= 32'h0;
            counter_msb <= 32'h0;
        end else begin
            cycle_count <= cycle_count + 1;
            counter_lsb <= cycle_count[31:0];
            counter_msb <= cycle_count[63:32];
        end
    end

endmodule
