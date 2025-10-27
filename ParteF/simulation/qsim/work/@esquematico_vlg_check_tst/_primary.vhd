library verilog;
use verilog.vl_types.all;
entity Esquematico_vlg_check_tst is
    port(
        Ack             : in     vl_logic;
        fin_dato        : in     vl_logic;
        fin_dir         : in     vl_logic;
        Hab_Dat         : in     vl_logic;
        Hab_dir         : in     vl_logic;
        soy             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Esquematico_vlg_check_tst;
