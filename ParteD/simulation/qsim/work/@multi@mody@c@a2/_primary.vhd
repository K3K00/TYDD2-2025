library verilog;
use verilog.vl_types.all;
entity MultiModyCA2 is
    port(
        s3              : out    vl_logic;
        clk             : in     vl_logic;
        B0              : in     vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        A0              : in     vl_logic;
        s2              : out    vl_logic;
        s1              : out    vl_logic;
        s0              : out    vl_logic;
        u0              : out    vl_logic;
        u1              : out    vl_logic;
        u2              : out    vl_logic;
        u3              : out    vl_logic
    );
end MultiModyCA2;
