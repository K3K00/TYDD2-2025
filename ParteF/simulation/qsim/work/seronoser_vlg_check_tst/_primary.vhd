library verilog;
use verilog.vl_types.all;
entity seronoser_vlg_check_tst is
    port(
        fin_dir         : in     vl_logic;
        soy             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end seronoser_vlg_check_tst;
