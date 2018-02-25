library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        clk             : in     vl_logic;
        up              : in     vl_logic;
        down            : in     vl_logic;
        reset           : in     vl_logic;
        result          : out    vl_logic_vector(10 downto 0)
    );
end counter;
