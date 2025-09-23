
`timescale 1ns/1ps

module CSA_8_tb;
    logic [7:0] a, b;
    logic       cin;
    logic [7:0] sum;
    logic       cout;

    // DUT 
    CSA_8 dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
//trying different combinations
    initial begin
        a = 8'h00; b = 8'h00; cin = 0; #10;
        a = 8'h05; b = 8'h03; cin = 0; #10;
        a = 8'h0F; b = 8'h01; cin = 0; #10;
        a = 8'h0F; b = 8'h01; cin = 1; #10;
        a = 8'h55; b = 8'h55; cin = 0; #10;
        a = 8'hAA; b = 8'h55; cin = 1; #10;
        a = 8'hFF; b = 8'h01; cin = 0; #10;
        a = 8'hFF; b = 8'hFF; cin = 1; #10;

//        $stop;
    end
endmodule
