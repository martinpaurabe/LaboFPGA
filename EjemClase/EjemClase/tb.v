`timescale 10ns/1ns   //Corresponde a la unidad de tiempo del simulador y precisión
module tb;            //Nombre del Test Bench (tiene que ser igual al del archivo)
reg [1:0] Sim_KEY;			 //Variable Interna del TB que simulara entradas del programa
reg Sim_clk;					 //(Recordar que el TOP del programa es para programar, pero
reg [3:0] Sim_SW;							 //en el banco de prueba el "TOP" es el TB	

wire [7:0] Sim_LED;		 //Tengo que asignar la salidas como wire

ejem1 ejem1_inst(
		Sim_clk,
		Sim_SW,
		Sim_KEY,
		Sim_LED);


initial
begin
Sim_clk = 0;					//Importante inicializar el valor de las variables	
Sim_KEY = 0;
Sim_SW =4'b1010;
#200 $stop;				//Cantidad de Unidades de tiempo del simulador y despues para
end						//Cuando se crea el Test Bench se puede seleccionar (vector o tiempo)

always
#5 Sim_clk=~Sim_clk;

always
begin
#4 Sim_KEY = 0;
#4 Sim_KEY = 1;
#4 Sim_KEY = 2;
#4 Sim_KEY = 3;
end


endmodule 