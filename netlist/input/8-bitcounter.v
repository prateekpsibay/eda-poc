module counter(clk, rst, count, SE, scan_in, scan_out); 
  input clk, rst, SE, scan_in;
  output [7:0] count;
  output scan_out;
  wire clk, rst, SE, scan_in;
  wire [7:0] count;
  wire scan_out;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_20, n_21, n_22, n_23, n_24, n_25;
assign scan_out = count[7];
  SDFFRHQX1 count_reg[0] (.RN (rst), .CK (clk), .D (n_6), .SI
       (scan_in), .SE (SE), .Q (count[0]));
  SDFFRHQX1 count_reg[1] (.RN (rst), .CK (clk), .D (n_7), .SI
       (count[0]), .SE (SE), .Q (count[1]));
  SDFFRHQX1 count_reg[2] (.RN (rst), .CK (clk), .D (n_25), .SI
       (count[1]), .SE (SE), .Q (count[2]));
  SDFFRHQX1 count_reg[3] (.RN (rst), .CK (clk), .D (n_24), .SI
       (count[2]), .SE (SE), .Q (count[3]));
  SDFFRHQX1 count_reg[4] (.RN (rst), .CK (clk), .D (n_23), .SI
       (count[3]), .SE (SE), .Q (count[4]));
  SDFFRHQX1 count_reg[5] (.RN (rst), .CK (clk), .D (n_22), .SI
       (count[4]), .SE (SE), .Q (count[5]));
  SDFFRHQX1 count_reg[6] (.RN (rst), .CK (clk), .D (n_21), .SI
       (count[5]), .SE (SE), .Q (count[6]));
  SDFFRHQX1 count_reg[7] (.RN (rst), .CK (clk), .D (n_20), .SI
       (count[6]), .SE (SE), .Q (count[7]));
INVX1 g769(.A (count[0]), .Y (n_6));
  XNOR2X1 g839(.A (count[7]), .B (n_5), .Y (n_20));
  XNOR2X1 g840(.A (count[6]), .B (n_4), .Y (n_21));
  NAND2BX1 g841(.AN (n_4), .B (count[6]), .Y (n_5));
  XNOR2X1 g842(.A (count[5]), .B (n_3), .Y (n_22));
  NAND2BX1 g843(.AN (n_3), .B (count[5]), .Y (n_4));
  XNOR2X1 g844(.A (count[4]), .B (n_2), .Y (n_23));
  NAND2BX1 g845(.AN (n_2), .B (count[4]), .Y (n_3));
  XNOR2X1 g846(.A (count[3]), .B (n_1), .Y (n_24));
  NAND2BX1 g847(.AN (n_1), .B (count[3]), .Y (n_2));
  XNOR2X1 g848(.A (count[2]), .B (n_0), .Y (n_25));
  NAND2BX1 g849(.AN (n_0), .B (count[2]), .Y (n_1));
  XOR2XL g850(.A (count[0]), .B (count[1]), .Y (n_7));
  NAND2X1 g851(.A (count[1]), .B (count[0]), .Y (n_0));
endmodule

