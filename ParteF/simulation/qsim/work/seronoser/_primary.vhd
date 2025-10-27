library verilog;
use verilog.vl_types.all;
entity seronoser is
    port(
        soy             : out    vl_logic;
        Hab_Dir         : in     vl_logic;
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        fin_dir         : out    vl_logic
    );
end seronoser;
