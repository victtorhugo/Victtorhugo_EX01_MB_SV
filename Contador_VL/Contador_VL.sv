module Contador_VL(input logic reset, clock,
							output logic [3:0]out);
							logic cont;							
always_ff @(posedge clock or posedge reset)

	begin	
	if (reset)
		begin
		cont <= 0;
		out <= 4'd0;
		end	
	else		
		if(cont == 0)
			if(out == 4'd14)
				begin
				cont <= 1;
				out <= out + 4'd1;			
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