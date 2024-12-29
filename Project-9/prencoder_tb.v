//module priority_encoder_4bit_tb;

//reg [3:0] I;

//wire V;

//wire [1:0] Y;

//priority_encoder uut (.I(I),.Y(Y),.V(V));

//initial begin

//// Test case 1: input 0100, output should be 01, V = 1 
//    I=4'b0100;

//#10;

//// Test case 2: input 0001, output should be 11, v=1 
//    I= 4'b0001;

//#10;

//// Test case 3: input 1100, output should be 01, V=1 
//    I= 4'b1100;

//#10;

//// Test case 4: input 1010, output should be 10, V=1 
//    I=4'b1010;

//#10;

//// Test case 5: input 0011, output should be 11, v=1 
//    I=4'b0011;

//#10;

//// Test case 6: input 0000, output should be xx, V=0 
//    I=4'b0000;

//#10;

//// Test case 7: input 0001, output should be 00, v=1 
//    I=4'b1000;

//#10;

//// Add more test cases if needed

//$stop;

//end

//endmodule