module	Simple_Circuit_prop_delay(A, B, C, D, E);
	output	D, E;
	input	A, B, C;
	wire	w1;
	
	and	#(30) G1(w1, A, B);
	or	#(10) G3(D, w1, E);
	not	#(20) G2(E, C);

endmodule