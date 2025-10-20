library verilog;
use verilog.vl_types.all;
entity MultiplicadorSinSigno is
    port(
        p0              : out    vl_logic;
        A0              : in     vl_logic;
        B0              : in     vl_logic;
        p1              : out    vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        p2              : out    vl_logic;
        p3              : out    vl_logic
    );
end MultiplicadorSinSigno;
