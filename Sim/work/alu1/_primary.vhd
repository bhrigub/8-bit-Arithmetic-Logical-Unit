library verilog;
use verilog.vl_types.all;
entity alu1 is
    port(
        c               : out    vl_logic_vector(7 downto 0);
        borrow          : out    vl_logic;
        carry           : out    vl_logic;
        equal           : out    vl_logic;
        less            : out    vl_logic;
        greater         : out    vl_logic;
        xor1            : out    vl_logic_vector(7 downto 0);
        and1            : out    vl_logic_vector(7 downto 0);
        or1             : out    vl_logic_vector(7 downto 0);
        nor1            : out    vl_logic_vector(7 downto 0);
        nand1           : out    vl_logic_vector(7 downto 0);
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        choice          : in     vl_logic_vector(2 downto 0)
    );
end alu1;
