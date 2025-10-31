module memory(
input wire [7:0] data,
input wire [1:0] address,
input wire store,
output wire [7:0] out
    );
     
     wire [7:0] byte0Wire;
     wire [7:0] byte1Wire;
     wire [7:0] byte2Wire;
     wire [7:0] byte3Wire;
     
     wire [7:0] byte0WireOut;
     wire [7:0] byte1WireOut;
     wire [7:0] byte2WireOut;
     wire [7:0] byte3WireOut;
     
     wire sel0, sel1, sel2, sel3;
     
     tinydemux dan(
     .en(store),
     .sel(address),
     .A(sel0),
     .B(sel1),
     .C(sel2),
     .D(sel3)
     );
     
     demux dm(
     .In(data),
     .Sel(address),
     .Enable(1'b1),
     .A(byte0Wire),
     .B(byte1Wire),
     .C(byte2Wire),
     .D(byte3Wire)
     );
     
     bytememory byte0(
     .data(byte0Wire),
     .E(sel0),
     .memory(byte0WireOut)
     );
     
     bytememory byte1(
      .data(byte1Wire),
     .E(sel1),
     .memory(byte1WireOut)
     );
    
     bytememory byte2(
     .data(byte2Wire),
     .E(sel2),
     .memory(byte2WireOut)
     );
     
     bytememory byte3(
     .data(byte3Wire),
     .E(sel3),
     .memory(byte3WireOut)
     );
     
     mux m(
     .Sel(address),
     .Enable(1'b1),
     .A(byte0WireOut),
     .B(byte1WireOut),
     .C(byte2WireOut),
     .D(byte3WireOut),
     .Y(out)
     );
    
endmodule
