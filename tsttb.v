`timescale 1ns / 1ps

module tsttb(  );

reg [31:0] A;
wire [31:0] f_sqrt;

tst s1 (.A(A),.f_sqrt(f_sqrt));

initial  
begin


A = 32'h42040000;  // 33
#20
A = 32'h42aa0000;  // 85
#20
A = 32'h42b80000;  // 92
#20
A = 32'h44208000;  // 642
#20
A = 32'h4517f000;  // 2431

#20 $finish;

end

initial 
begin
$monitor("A=%b, f_sqrt=%b ",$time,A,f_sqrt);
end


endmodule
