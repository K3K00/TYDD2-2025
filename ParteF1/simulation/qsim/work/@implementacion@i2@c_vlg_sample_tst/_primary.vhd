library verilog;
use verilog.vl_types.all;
entity ImplementacionI2C_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        fin_dato        : in     vl_logic;
        fin_dir         : in     vl_logic;
        reset           : in     vl_logic;
        SDA             : in     vl_logic;
        soy             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ImplementacionI2C_vlg_sample_tst;
