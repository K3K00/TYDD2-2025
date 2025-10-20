library verilog;
use verilog.vl_types.all;
entity FFJK is
    port(
        J               : in     vl_logic;
        K               : in     vl_logic;
        clk             : in     vl_logic;
        Qout            : out    vl_logic
    );
end FFJK;
