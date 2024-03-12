//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module CCTA(
        input [3:0] A,
        input [3:0] B,
        input [3:0] C,
        input rst,
        input ctrl,
        output [4:0] q
);

reg [4:0]Q;
assign q=Q;

//fill in the q,rst part

//assign sum_A = A[3]+A[2]+A[1]+A[0];  this is summation of each individual bit as a number, not 4 bits as a number
//assign sum_B = B[3]+B[2]+B[1]+B[0];
//assign sum_C = C[3]+C[2]+C[1]+C[0];

always@(A,B,C,rst,ctrl,Q) begin
    if (rst==1'b1) begin
        Q=1'b0;
    end 
    
    else begin
        case(ctrl)
        0 : Q = A + B;
        1 : Q = A - C;
        default: Q=0;
    endcase
    end   
    
end

endmodule