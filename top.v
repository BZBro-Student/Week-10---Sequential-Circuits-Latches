

module top(
input [15:0] sw,
input btnC,
output [15:0] led
    );
    

    
    DLatch dl(
    .D(sw[0]),
    .E(btnC),
    .Q(led[0]),
    .NotQ(led[1])
    );
    
    memory mem(
    .data(sw[15:8]),
    .address(sw[7:6]),
    .store(btnC),
    .out(led[15:8])
    );
    
    
endmodule

