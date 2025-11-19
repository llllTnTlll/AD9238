`timescale 1ns/1ns

module tb_design_2_wrapper;

  // ========= 时钟/复位 =========
  logic clk_0    = 1'b0;    // 50 MHz -> 20 ns
  logic rst_n_0  = 1'b0;    // 低有效复位

  // ========= DUT 端口 =========
  logic [11:0] ch1_din_0 = 12'd0;
  wire         m00_axi_error_0;
  wire         m00_axi_txn_done_0;

  // 实例化 DUT（BD wrapper）
  design_2_wrapper dut (
    .ch1_din_0          (ch1_din_0),
    .clk_0              (clk_0),
    .m00_axi_error_0    (m00_axi_error_0),
    .m00_axi_txn_done_0 (m00_axi_txn_done_0),
    .rst_n_0            (rst_n_0)
  );

  // 50MHz 时钟
  always #10 clk_0 = ~clk_0;

  localparam int N_SAMPLES = 100;
  int i;

  // ========= AXI VIP：导入包 & 启动 Slave Agent =========
  // 包名和类型名随“VIP实例名”变化。默认 axi_vip_0：
  import axi_vip_pkg::*;
  import axi_vip_0_pkg::*;

  axi_vip_0_slv_t slv_agent;  // Slave Agent 句柄类型：<inst>_slv_t

  initial begin
    // 先做复位
    rst_n_0   = 1'b0;
    ch1_din_0 = 12'd0;

    // VCD
    $dumpfile("tb_design_2_wrapper.vcd");
    $dumpvars(0, tb_design_2_wrapper);

    // 200ns 复位
    repeat (10) @(posedge clk_0);
    rst_n_0 = 1'b1;

    // ========= 启动 AXI VIP Slave =========
    // !!! 关键：把第二个参数改成你工程里 VIP 的实际 IF 层次路径 !!!
    // 典型路径：tb顶层.dut.BD实例名.VIP实例名.inst.IF
    // 你的 wrapper 里 BD 实例名通常是 design_2_i，VIP 默认 axi_vip_0：
    wait (rst_n_0 == 1'b1);
    slv_agent = new("slv_agent", tb_design_2_wrapper.dut.design_2_i.axi_vip_0.inst.IF);

    // 启动从机代理
    slv_agent.start_slave();

    // 设置“永远 ready / 无回压”
    // 不同版本 API 略有差异，二选一，编译器会提示哪个可用：
    slv_agent.set_ready_policy(axi_ready_gen::ALWAYS_READY);
    // 或者：
    // slv_agent.ready_gen.set_ready_policy(READY_GEN_NO_BACKPRESSURE);

    // 读写默认响应 OKAY（通常默认即 OKAY，这里显式设定更稳）
    slv_agent.set_default_write_resp(axi_resp_t'(AXI_OKAY));
    slv_agent.set_default_read_resp (axi_resp_t'(AXI_OKAY));

    // ========= 正式激励 =========
    // 让系统稳定几拍
    repeat (5) @(posedge clk_0);

    // 依次喂入 0..99（12位）
    for (i = 0; i < N_SAMPLES; i++) begin
      @(negedge clk_0);
      ch1_din_0 <= i[11:0];
      $display("[%0t] Send #%0d : ch1_din_0 = 0x%03h (%0d)",
               $time, i, i[11:0], i);
    end

    // 观察一段时间
    repeat (50) @(posedge clk_0);

    if (m00_axi_error_0)
      $display("[%0t] DUT reported ERROR!", $time);
    if (m00_axi_txn_done_0)
      $display("[%0t] DUT reported TXN DONE.", $time);

    $display("[%0t] TB finished.", $time);
    $finish;
  end

endmodule