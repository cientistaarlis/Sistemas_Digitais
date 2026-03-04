// Testbench do Demultiplexador 1x8 

module tb_demux_1x8;

	reg entrada; 
	reg [2:0] sel;
	wire [7:0]saida;

	demux_1x8 uut(.entrada(entrada), .sel(sel), .saida(saida)); 	// Instanciação		

	initial 
		begin
			//Estimulos
			entrada=1'b0; sel=3'b000;
			#5;
			entrada=1'b1; sel=3'b001;
			#5;
			entrada=1'b1; sel=3'b010;
			#5;
			entrada=1'b1; sel=3'b100;
			#5;
			entrada=1'b0; sel=3'b100;
			#5;
			entrada=1'b0; sel=3'b010;
			#5;
			entrada=1'b0; sel=3'b001;
			#5;
			entrada=1'b1; sel=3'b110;
			#5;
			entrada=1'b1; sel=3'b011;
			#5;
			entrada=1'b1; sel=3'b111;
			#5;
			entrada=1'b0; sel=3'b110;
			#5;
			entrada=1'b0; sel=3'b111;
			#5;
			entrada=1'b0; sel=3'b011;
		end
endmodule	

