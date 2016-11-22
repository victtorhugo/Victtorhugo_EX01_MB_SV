module contador_VL_2 (input logic CP, CLEAR, 
							output logic [3:0] out);
							logic count;

always_ff @(posedge CP or posedge CLEAR)
	
begin
if (CLEAR)
		begin
		out <= 4'd0 ;
		count <= 1'b1;
		end
else
	if(count == 1'b0)
		if(out == 4'd15)
			count <= 1'b1;
		else
			out <= out + 4'd1;
	else
		if(out == 4'd0)
			count <= 1'b0;
		else
			out <= out - 4'd1;
end
endmodule