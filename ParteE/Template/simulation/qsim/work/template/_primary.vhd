library verilog;
use verilog.vl_types.all;
entity template is
    port(
        clk             : in     vl_logic;
        din             : in     vl_logic;
        reset           : in     vl_logic;
        dout            : out    vl_logic_vector(3 downto 0)
    );
end template;
