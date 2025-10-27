library verilog;
use verilog.vl_types.all;
entity ImplementacionI2C is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        SDA             : in     vl_logic;
        soy             : in     vl_logic;
        fin_dir         : in     vl_logic;
        fin_dato        : in     vl_logic;
        Hab_Dir         : out    vl_logic;
        Hab_Dat         : out    vl_logic;
        ACK             : out    vl_logic
    );
end ImplementacionI2C;
