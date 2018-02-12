
/*
Design an 8-bit ALU. Features include:
a. Two 8-bit inputs A and B.
b. One 8-bit output C.
c. Five 1-bit outputs Borrow, Carry, Equal, less (A<B) and more (A>B).
d. Supports Addition, Subtraction, XOR, AND, NOR, NAND and Comparison.
Also Display Inputs, Outputs and Operation performed on transcript. Output (8-bit) will be zero for comparison operation. Use case equality for comparison of A and B.
*/
module alu(c,borrow,carry,equal,less,more,a,b,alu_control);
  output reg[7:0]c=0;
  output reg borrow=0,carry=0,equal=0,less=0,more=0;
  input [7:0]a,b;
  input [2:0]alu_control;
  always @ (*)
  begin
    case(alu_control)
      
      3'd0 : begin
            {carry,c} =(a + b); //Addition//
            $display ("IN ADDITION a=%b b=%b alu_control=%d carry=%b, c=%b",a,b,alu_control,carry,c);
          end
      3'd1 : begin
            {borrow,c} =(a - b); //Subtraction//
           $display ("IN SUBTRACTION a=%b b=%b alu_control=%d borrow=%b c=%b",a,b,alu_control,borrow,c);
          end
      3'd2 : begin
             c = a ^ b; //XOR operation//
                 $display ("IN XOR a=%b b=%b alu_control=%d c=%b",a,b,alu_control,c);
          end
      3'd3 : begin
            c = a & b; //AND operation//
                 $display ("IN AND a=%b b=%b alu_control=%d  c=%b",a,b,alu_control,c);
          end
      3'd4 : begin
            c = ~(a | b); //NOR operation//
                $display ("IN NOR a=%b b=%b alu_control=%d  c=%b",a,b,alu_control,c);
          end
      3'd5 : begin
            c = ~(a & b); //NAND operation//
                   $display ("IN NAND a=%b b=%b alu_control=%d  c=%b",a,b,alu_control,c);
          end
      3'd6 : begin//Comparison operation// 
            if(a>b)
              begin
              more=1'b1;
           end
            else if(b>a)
              begin
              less=1'b1;
   end
            else
              begin
              equal=1'b1;
            end
            $display ("IN COMP a=%b b=%b alu_control=%d more=%b less=%b equal=%b ",a,b,alu_control,more,less,equal);
          end
        default: begin
            c=1'b0;
            equal=0;
            less=0;
            more=0;
            carry=0;
            borrow=0;
         $display("Invalid ALU signal");
         $display("Invalid Selection alu_control=%d", alu_control);
       end
               
          endcase
        end
        endmodule