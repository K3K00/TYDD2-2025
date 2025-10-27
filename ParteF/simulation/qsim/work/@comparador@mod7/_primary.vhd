library verilog;
use verilog.vl_types.all;
entity ComparadorMod7 is
    port(
        dataa           : in     vl_logic_vector(2 downto 0);
        ageb            : out    vl_logic
    );
end ComparadorMod7;
