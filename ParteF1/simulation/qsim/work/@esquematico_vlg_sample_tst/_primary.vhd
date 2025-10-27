library verilog;
use verilog.vl_types.all;
entity Esquematico_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Esquematico_vlg_sample_tst;
