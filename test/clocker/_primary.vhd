library verilog;
use verilog.vl_types.all;
entity clocker is
    port(
        clk             : in     vl_logic;
        a               : out    vl_logic;
        b               : out    vl_logic;
        z               : out    vl_logic
    );
end clocker;
