module Contador_VL(input logic CLEAR, CP,
							output logic [3:0]out);
							logic cont;							
always_ff @(posedge CP or posedge CLEAR)

	begin	
	if (CLEAR)
		begin
		cont <= 0;
		out <= 4'd0;
		end	
	else		
		if(cont == 0)
			if(out == 4'd15)
				begin
				cont <= 1;
				out <= out - 4'd1;			
				end
			else
				out <= out + 4'd1;
		else
			if(out == 4'd1)
				begin
				cont <= 0;
				out <= out - 4'd1;
				end
			else
				out <= out - 4'd1;	
	end
endmodule