# 8-to-3 Priority Encoder using Verilog

## Overview

This project implements an **8-to-3 Priority Encoder** using Verilog HDL.

A priority encoder converts multiple input signals into a binary code corresponding to the highest-priority active input.

## Features

- 8 input lines
- 3 output encoded bits
- Highest priority input selection
- Valid output indicator
- Combinational logic design
- GTKWave simulation support

## Inputs

| Signal | Description |
|--------|-------------|
| D[7:0] | 8-bit input signals |

## Outputs

| Signal | Description |
|--------|-------------|
| Y[2:0] | Encoded output |
| valid | Indicates active input |

## Priority Order

```
D7 > D6 > D5 > D4 > D3 > D2 > D1 > D0
```

## Truth Table

| Active Input | Output |
|-------------|--------|
|D0|000|
|D1|001|
|D2|010|
|D3|011|
|D4|100|
|D5|101|
|D6|110|
|D7|111|

## Project Files

- `priority_encoder.v` - Verilog design
- `priority_encoder_tb.v` - Testbench
- `priority_encoder.vcd` - Waveform file
- `simulation_result.png` - Simulation screenshot

## Simulation

### Compile

```bash
iverilog -o encoder priority_encoder.v priority_encoder_tb.v
```

### Run

```bash
vvp encoder
```

### View Waveform

```bash
gtkwave priority_encoder.vcd
```

## Applications

- Interrupt controllers
- CPU priority handling
- Data routing systems
- Digital communication systems
- Embedded systems