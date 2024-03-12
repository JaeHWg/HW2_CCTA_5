module CCTA_tb();
     reg [3:0] A;
     reg [3:0] B;
     reg [3:0] C;
     reg rst;
     reg ctrl;
     wire [4:0] q;
        
CCTA C1(A,B,C,rst,ctrl,q); //naming CCTA "C1" with inputs and outputs of such. Must be named in order

initial begin
    //initiallize values of inputs rst, ctrl, A,B,C
    #0 rst = 1'b1;
    #0 ctrl = 1'b0;
    #0 A = 4'b1111;
    #0 B = 4'b1010;
    #0 C = 4'b1001;
    
    //case 1
    #10 rst = 1'b0; //change rst value to 0 after 10 seconds
    /*#0 A = 4'b1111;
    #0 B = 4'b1010;
    #0 C = 4'b1001;*/
    
    //case 2
    #10 A = 4'b1000; //change A value 10 seconds after the previous line of code
    #0 B = 4'b0101; //change B value 0 seconds after the previous line of code
    #0 C = 4'b0001;
    
    //case 3
    #10 A = 4'b0000; //change A value 10 seconds after the previous line of code
    #0 B = 4'b0110; //change B value 0 seconds after the previous line of code
    #0 C = 4'b0011;
    
    //case 4
    #10 ctrl = 1'b1;
    #0 A = 4'b1111;
    #0 B = 4'b1010;
    #0 C = 4'b1001;
    
    //case 5
    #10 A = 4'b1000; //change A value 10 seconds after the previous line of code
    #0 B = 4'b0101; //change B value 0 seconds after the previous line of code
    #0 C = 4'b0001;
    
    //case 6
    #10 A = 4'b0000; //change A value 10 seconds after the previous line of code
    #0 B = 4'b0110; //change B value 0 seconds after the previous line of code
    #0 C = 4'b0011;
    
    //stop simulation
    #10 rst = 1'b1;
    #10 $stop;
    end
    
endmodule