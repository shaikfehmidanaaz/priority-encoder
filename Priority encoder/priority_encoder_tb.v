`timescale 1ns/1ps

module priority_encoder_tb;

reg [7:0] D;

wire [2:0] Y;
wire valid;


// Module Instance

priority_encoder uut(
    .D(D),
    .Y(Y),
    .valid(valid)
);


initial
begin

    $dumpfile("priority_encoder.vcd");
    $dumpvars(0, priority_encoder_tb);


    $display("Input\tOutput\tValid");


    D = 8'b00000001;
    #10;
    $display("%b\t%b\t%b",D,Y,valid);


    D = 8'b00000100;
    #10;
    $display("%b\t%b\t%b",D,Y,valid);


    D = 8'b00101000;
    #10;
    $display("%b\t%b\t%b",D,Y,valid);


    D = 8'b01000000;
    #10;
    $display("%b\t%b\t%b",D,Y,valid);


    D = 8'b10100000;
    #10;
    $display("%b\t%b\t%b",D,Y,valid);


    D = 8'b00000000;
    #10;
    $display("%b\t%b\t%b",D,Y,valid);


    #10;

    $finish;

end

endmodule