library verilog;
use verilog.vl_types.all;
entity Secador_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CSK             : in     vl_logic;
        DATA_MOSI       : in     vl_logic;
        FINISH          : in     vl_logic;
        HALT            : in     vl_logic;
        load_pin        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Secador_vlg_sample_tst;
