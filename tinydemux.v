module tinydemux(
    input  wire en,
    input  wire [1:0] sel,
    output reg A,
    output reg B,
    output reg C,
    output reg D
);

    always @ (*) begin
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;

        if (en) begin
            case (sel)
                2'b00: A = 1'b1;
                2'b01: B = 1'b1;
                2'b10: C = 1'b1;
                2'b11: D = 1'b1;
                default: ;
            endcase
        end
    end
endmodule