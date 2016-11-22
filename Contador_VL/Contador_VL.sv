module Contador_VL(input logic reset, clock,
							output logic [3:0]saida);
							logic cont;							
always_ff @(posedge clock or posedge reset)

	begin	
	if (reset)
		begin
		cont <= 0;
		saida <= 4'd0;
		end	
	else		
		if(cont == 0)
			if(saida == 4'd14)
				begin
				cont <= 1;
				saida <= saida + 4'd1;			
				end
			else
				saida <= saida + 4'd1;
		else
			if(saida == 4'd1)
				begin
				cont <= 0;
				saida <= saida - 4'd1;
				end
			else
				saida <= saida - 4'd1;	
	end
endmodule