library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        c               : out    vl_logic_vector(7 downto 0);
        borrow          : out    vl_logic;
        carry           : out    vl_logic;
        equal           : out    vl_logic;
        less            : out    vl_logic;
        more            : out    vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        alu_control     : in     vl_logic_vector(2 downto 0)
    );
end alu;
