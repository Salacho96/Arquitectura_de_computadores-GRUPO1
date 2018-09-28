library verilog;
use verilog.vl_types.all;
entity FLIP_FLOP is
    port(
        D               : in     vl_logic;
        CLK             : in     vl_logic;
        Q               : out    vl_logic
    );
end FLIP_FLOP;
