library verilog;
use verilog.vl_types.all;
entity decoder is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        up              : out    vl_logic;
        down            : out    vl_logic
    );
end decoder;
