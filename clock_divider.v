module clock_divider(
    input wire clk_in,       // 100 MHz input clock
    output reg clk_out       // 8 kHz output clock
);
    reg [13:0] counter = 0;  // 14-bit counter for division (100 MHz / 8 kHz = 12500)

    always @(posedge clk_in) begin
        if (counter == 12499) begin
            counter <= 0;
            clk_out <= ~clk_out;
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
