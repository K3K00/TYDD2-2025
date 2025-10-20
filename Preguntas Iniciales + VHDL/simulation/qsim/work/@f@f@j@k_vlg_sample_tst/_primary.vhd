library verilog;
use verilog.vl_types.all;
entity FFJK_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FFJK_vlg_sample_tst;
