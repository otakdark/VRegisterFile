# Register File Verilog Implementation

This Verilog module represents a simple register file with two 4-bit registers. It allows reading from two different addresses and writing to a specified address when `write_enable` is active on the positive edge of the clock signal.

## Module Inputs

- `clock`: Clock signal
- `reset`: Reset signal to initialize registers to zero
- `read_address_1`, `read_address_2`: Addresses for data read operations
- `write_enable`: Signal to enable writing
- `write_address`: Address for data write operation
- `write_data`: Data to be written into the specified address

## Module Outputs

- `data_out_1`, `data_out_2`: Data output from the specified addresses

## Implementation Details

- Two 4-bit registers are utilized within this module.
- The `reset` signal initializes both registers to zero.
- On each positive clock edge, the module checks for `write_enable`. If active, it writes `write_data` to the specified `write_address`.
- Reading operations occur continuously based on the specified `read_address_1` and `read_address_2`.

## Usage

Instantiate this module in your Verilog design by providing appropriate signals for inputs and capturing the output data as needed.

Example instantiation:
```verilog
module your_module_name (
    // other module ports...
    input wire clock,
    input wire reset,
    // other module ports...
    output reg [3:0] read_data_1,
    output reg [3:0] read_data_2
);

register_file reg_file_inst (
    .clock(clock),
    .reset(reset),
    .read_address_1(your_read_address_1),
    .read_address_2(your_read_address_2),
    .write_enable(your_write_enable),
    .write_address(your_write_address),
    .write_data(your_write_data),
    .data_out_1(read_data_1),
    .data_out_2(read_data_2)
);

// your module logic...
endmodule
