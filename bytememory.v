module bytememory(
input [7:0] data,
input E,
output reg [7:0] memory 
    );
    
    always @(data, E) begin 
        if (E)
            memory <= data; 
    end

endmodule
