module clock_divider(
    input wire clk_in,       
    output reg clk_out     
);
    reg [13:0] counter = 0; 

    always @(posedge clk_in) begin
        if (counter == 12499) begin
            counter <= 0;
            clk_out <= ~clk_out;
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
