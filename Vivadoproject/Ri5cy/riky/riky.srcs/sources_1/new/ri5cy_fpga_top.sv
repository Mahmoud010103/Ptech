// Wrapper top-level pour RI5CY sur FPGA
// Compatible avec le fork Embecosm de RI5CY
// Basé sur l'interface exacte du module riscv_core.sv

module ri5cy_fpga_top #(
    parameter N_EXT_PERF_COUNTERS = 0,
    parameter INSTR_RDATA_WIDTH   = 32
)(
    // Signaux d'horloge et reset
    input  logic        clk_i,
    input  logic        rst_ni,
    
    // Gestion du clock gating
    input  logic        clock_en_i,
    input  logic        test_en_i,
    
    // Signaux de boot et configuration
    input  logic [31:0] boot_addr_i,
    input  logic [3:0]  core_id_i,
    input  logic [5:0]  cluster_id_i,
    
    // Interface mémoire instruction
    output logic                         instr_req_o,
    input  logic                         instr_gnt_i,
    input  logic                         instr_rvalid_i,
    output logic                  [31:0] instr_addr_o,
    input  logic [INSTR_RDATA_WIDTH-1:0] instr_rdata_i,
    
    // Interface mémoire données
    output logic        data_req_o,
    input  logic        data_gnt_i,
    input  logic        data_rvalid_i,
    output logic        data_we_o,
    output logic [3:0]  data_be_o,
    output logic [31:0] data_addr_o,
    output logic [31:0] data_wdata_o,
    input  logic [31:0] data_rdata_i,
    input  logic        data_err_i,
    
    // Interruptions
    input  logic [31:0] irq_i,
    
    // Debug Interface
    input  logic        debug_req_i,
    output logic        debug_gnt_o,
    output logic        debug_rvalid_o,
    input  logic [14:0] debug_addr_i,
    input  logic        debug_we_i,
    input  logic [31:0] debug_wdata_i,
    output logic [31:0] debug_rdata_o,
    output logic        debug_halted_o,
    input  logic        debug_halt_i,
    input  logic        debug_resume_i,
    
    // CPU Control Signals
    input  logic        fetch_enable_i,
    output logic        core_busy_o,
    
    // Performance counters externes (optionnel)
    input  logic [N_EXT_PERF_COUNTERS-1:0] ext_perf_counters_i
);
   
    
    // Instance du core RI5CY
    riscv_core #(
        .N_EXT_PERF_COUNTERS(N_EXT_PERF_COUNTERS),
        .INSTR_RDATA_WIDTH(INSTR_RDATA_WIDTH)
    ) riscv_core_i (
        // Clock and Reset
        .clk_i(clk_i),
        .rst_ni(rst_ni),
        .clock_en_i(clock_en_i),
        .test_en_i(test_en_i),
        
        // Core ID, Cluster ID and boot address
        .boot_addr_i(boot_addr_i),
        .core_id_i(core_id_i),
        .cluster_id_i(cluster_id_i),
        
        // Instruction memory interface
        .instr_req_o(instr_req_o),
        .instr_gnt_i(instr_gnt_i),
        .instr_rvalid_i(instr_rvalid_i),
        .instr_addr_o(instr_addr_o),
        .instr_rdata_i(instr_rdata_i),
        
        // Data memory interface
        .data_req_o(data_req_o),
        .data_gnt_i(data_gnt_i),
        .data_rvalid_i(data_rvalid_i),
        .data_we_o(data_we_o),
        .data_be_o(data_be_o),
        .data_addr_o(data_addr_o),
        .data_wdata_o(data_wdata_o),
        .data_rdata_i(data_rdata_i),
        .data_err_i(data_err_i),
        
        // Interrupt inputs
        .irq_i(irq_i),
        
        // Debug Interface
        .debug_req_i(debug_req_i),
        .debug_gnt_o(debug_gnt_o),
        .debug_rvalid_o(debug_rvalid_o),
        .debug_addr_i(debug_addr_i),
        .debug_we_i(debug_we_i),
        .debug_wdata_i(debug_wdata_i),
        .debug_rdata_o(debug_rdata_o),
        .debug_halted_o(debug_halted_o),
        .debug_halt_i(debug_halt_i),
        .debug_resume_i(debug_resume_i),
        
        // CPU Control Signals
        .fetch_enable_i(fetch_enable_i),
        .core_busy_o(core_busy_o),
        
        // External performance counters
        .ext_perf_counters_i(ext_perf_counters_i)
    );

endmodule