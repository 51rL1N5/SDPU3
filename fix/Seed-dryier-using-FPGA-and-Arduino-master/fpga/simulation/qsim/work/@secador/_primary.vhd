library verilog;
use verilog.vl_types.all;
entity Secador is
    port(
        DATA_MISO       : out    vl_logic;
        load_pin        : in     vl_logic;
        CLK             : in     vl_logic;
        CSK             : in     vl_logic;
        HALT            : in     vl_logic;
        FINISH          : in     vl_logic;
        DATA_MOSI       : in     vl_logic
    );
end Secador;
