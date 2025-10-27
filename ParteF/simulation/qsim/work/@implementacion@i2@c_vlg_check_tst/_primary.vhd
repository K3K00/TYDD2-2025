library verilog;
use verilog.vl_types.all;
entity ImplementacionI2C_vlg_check_tst is
    port(
        ACK             : in     vl_logic;
        Hab_Dat         : in     vl_logic;
        Hab_Dir         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ImplementacionI2C_vlg_check_tst;
