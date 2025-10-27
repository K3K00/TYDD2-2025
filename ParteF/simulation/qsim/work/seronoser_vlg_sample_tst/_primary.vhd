library verilog;
use verilog.vl_types.all;
entity seronoser_vlg_sample_tst is
    port(
        Hab_Dir         : in     vl_logic;
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end seronoser_vlg_sample_tst;
