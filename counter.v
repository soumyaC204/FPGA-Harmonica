module address_counter(
    input wire clk,
    input wire play,
    output reg [12:0] address
);
    always @(posedge clk) begin
        if (play)
            address <= address + 1;
        else
            address <= 0;
    end
endmodule
