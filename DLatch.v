module DLatch(
    input D,
    input E,
    output reg Q,
    output NotQ
);
    always @(D, E) begin 
        if (E)
            Q <= D; 
    end

    assign NotQ = ~Q; 

endmodule