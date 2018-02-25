library verilog;
use verilog.vl_types.all;
entity top is
    port(
        qa              : in     vl_logic;
        qb              : in     vl_logic;
        qz              : in     vl_logic;
        \out\           : out    vl_logic
    );
end top;
