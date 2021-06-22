# aclk {FREQ_HZ 100000000 CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0 PHASE 0.000} aclk1 {FREQ_HZ 148500000 CLK_DOMAIN /clk_wiz_0_clk_out1 PHASE 0.0}
# Clock Domain: system_processing_system7_0_0_FCLK_CLK0
create_clock -name aclk -period 10.000 [get_ports aclk]
# Clock Domain: /clk_wiz_0_clk_out1
create_clock -name aclk1 -period 6.734 [get_ports aclk1]
# Generated clocks
