library verilog;
use verilog.vl_types.all;
entity esaeslacuestion is
    port(
        fin_dato        : out    vl_logic;
        Hab_Dat         : in     vl_logic;
        SCL             : in     vl_logic;
        SDA             : in     vl_logic
    );
end esaeslacuestion;
