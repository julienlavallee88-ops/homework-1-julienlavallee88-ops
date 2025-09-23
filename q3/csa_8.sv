// 4-bit adder
module adder_4 (
    input  logic [3:0] a, b,
    input  logic       cin,
    output logic [3:0] sum,
    output logic       cout
);
    assign {cout, sum} = a + b + cin;
endmodule


// 8-bit carry select adder
module CSA_8 (
    input  logic [7:0] a, b,
    input  logic       cin,
    output logic [7:0] sum,
    output logic       cout
);
    // lower 4 bits
    logic [3:0] sum_lo;
    logic       cout_lo;

    adder_4 adder_lo (
        .a   (a[3:0]),
        .b   (b[3:0]),
        .cin (cin),
        .sum (sum_lo),
        .cout(cout_lo)
    );
