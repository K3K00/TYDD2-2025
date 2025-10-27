library verilog;
use verilog.vl_types.all;
entity Esquematico is
    port(
        Ack             : out    vl_logic;
        SDA             : in     vl_logic;
        clk             : in     vl_logic;
        SCL             : in     vl_logic;
        Hab_dir         : out    vl_logic;
        Hab_Dat         : out    vl_logic;
        fin_dir         : out    vl_logic;
        soy             : out    vl_logic;
        fin_dato        : out    vl_logic
    );
end Esquematico;
