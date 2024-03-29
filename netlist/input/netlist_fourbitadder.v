module FourBitAdder (
    input [3:0] A,
    input [3:0] B,
    output [3:0] SUM,
    output COUT);

    wire [3:0] carry;
    wire [3:0] sum;

    // First bit
    FullAdder fa0(.A(A[0]), .B(B[0]), .CIN(1'b0), .SUM(sum[0]), .COUT(carry[0])); // own n1 - HName - FourBitAdder/fa0/n1

    // Subsequent bits
    FullAdder fa1(.A(A[1]), .B(B[1]), .CIN(carry[0]), .SUM(sum[1]), .COUT(carry[1]));
    FullAdder fa2(.A(A[2]), .B(B[2]), .CIN(carry[1]), .SUM(sum[2]), .COUT(carry[2]));
    FullAdder fa3(.A(A[3]), .B(B[3]), .CIN(carry[2]), .SUM(sum[3]), .COUT(COUT));


endmodule

module FullAdder (
    input A,
    input B,
    input CIN,
    output SUM,
    output COUT);

    wire n1,n2,n8;

    BUFFSGD3BWP30P140HVT CLK_B1 (.I(B), .Z(n1) ); // hname = FourBitAdder/fa2/CLK_B1/Z

    XOR2SGD0BWP30P140 G1 (.A1(A), .A2(n1), .Z(n2));
    XOR2SGD0BWP30P140 G2 (.A1(CIN), .A2(n2), .Z(n8));

    BUFFSGD3BWP30P140HVT CLK_B2 (.I(n8), .Z(SUM) );

    BUFFSGD3BWP30P140HVT CLK_B3 (.I(CIN), .Z(COUT) );


endmodule
