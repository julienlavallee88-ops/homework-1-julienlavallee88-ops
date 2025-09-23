`timescale 1ns/1ns
module decoder_TB;
	logic [3:0] binary;
	logic [15:0] one_hot;

	decoder UUT ( .binary(binary), .one_hot(one_hot) );

	initial begin
		
		for (int i =0; i<16; i++) begin
			binary = i[3:0];
			#10;
			$display("%0t bin=%04b one_hot=%016b", $time, binary, one_hot);
		end
	end
endmodule

		
