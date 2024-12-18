module clock_divider (
    input wire clk,
    input wire rst,
    input wire [31:0] div_value,
    output reg clk_out
);

    reg [31:0] counter = 0;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            clk_out <= 0;
        end else begin
            if (counter >= div_value) begin
                counter <= 0;
                clk_out <= ~clk_out;
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule
