module bin2bcd (
 input logic [3:0] binary,
 output logic [3:0] bcd,
 output logic carry
);
always_comb begin
    bcd = 4'b0;
    carry = 1'b0;

    if (binary < 4'd10) begin
        carry = 1'b0;
        bcd[3:0] = binary[3:0];
    end else if (binary >= 10) begin
        carry = 1'b1;
        bcd[3:0] = binary - 4'd10;
    end

    end
endmodule
