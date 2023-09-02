//Asimpletestbench
module testbench;
reg sel;
reg [1:0]mux_in;
Moduleinstantiationbynameassociation
mux2to1u0(.mux_out(mux1_out),.sel(sel),
mux_in(mux_in[1:0]));
Inputpatternsexhaustivelygenerated
initialbegin
#10sel=0;mux_in[1:0]=2’b00; //Firstinputsignal
#10sel=0;mux_in[1:0]=2’b01; //Secondinputsignal
#10sel=0;mux_in[1:0]=2’b10; //Thirdinputsignal
#10sel=0;mux_in[1:0]=2’b11; //Fourthinputsignal
#10sel=1;mux_in[1:0]=2’b00; //Fifthinputsignal
#10sel=1;mux_in[1:0]=2’b01; //Sixthinputsignal
#10sel=1;mux_in[1:0]=2’b10; //Seventhinputsignal
#10sel=1;mux_in[1:0]=2’b11; //Eighthinputsignal
end
//Displayresultswhenevermonitoredsignalschange
initial
$monitor ($stime,"out=%b,sel=%b,in=%b",
mux1_out,sel,mux_in);
endmodule
