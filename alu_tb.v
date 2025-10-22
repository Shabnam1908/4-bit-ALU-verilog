module tb_ALU_4bit;
reg[3:0] A,B;
reg[2:0] SEL;
wire [3:0] OUT;

ALU_4bit uut
(.A(A), .B(B), .SEL(SEL), .OUT(OUT));

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, tb_ALU_4bit);
    $monitor("A=%b, B=%b, SEL=%b, OUT=%b", A,B,SEL,OUT);

      A=4'b0101; B=4'b0011;

      SEL=3'b000; #10;
      SEL=3'b001; #10;
      SEL=3'b010; #10;
      SEL=3'b011; #10;
      SEL=3'b100; #10;
      SEL=3'b101; #10;
      SEL=3'b110; #10;
      SEL=3'b111; #10;
      $finish;
end
endmodule