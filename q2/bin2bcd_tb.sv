`timescale 1ns/1ns
module bin2bcd_tb;
    logic [3:0] binary;
    logic [3:0] bcd;
    logic carry;

    bin2bcd UUT (
        .binary(binary),
        .bcd(bcd),
        .carry(carry)
    );
    initial begin
        for (int i =0; i<17; i++) begin
            binary =i[3:0];
            #20;
	    $display("%0t: binary=%d -> bcd=%d carry=%b", 
                     $time, binary, bcd, carry);
        end
    end
endmodule
