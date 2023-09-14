
#Multiply-Accumulate (MACC) Accelerator

## Overview

This repository contains a Verilog project for a Multiply-Accumulate (MACC) unit implemented in Xilinx Vivado. The MACC unit is designed to perform multiplication and accumulation operations on two 32-bit input values.

## Program Functionality

The Verilog code in this project consists of the following key components:

- **top.v**: This module represents the top-level design of the MACC unit. It includes inputs for clock (`clk`), reset (`rst`), two 32-bit inputs (`a` and `b`), an accumulation enable signal (`accumulate_enable`), and an output signal (`result`). The MACC unit performs multiplication and accumulation based on the inputs and generates the result.

- **testbench.v**: This is the testbench module used to simulate and verify the functionality of the MACC unit. It provides inputs (`clk`, `reset`, `a`, `b`, and `accumulate_enable`) and captures the output result for testing.

- **design.v**: This module (`macc_417`) defines the internal logic of the MACC unit. It includes registers, multiplexers, and combinational logic to compute the result based on the inputs and the accumulation enable signal.

## Software Setup

Before running this program on Xilinx Vivado, you need to have Vivado installed on your computer. Follow these steps to set up the software:

1. **Install Xilinx Vivado**: Download and install Xilinx Vivado from the official Xilinx website. Follow the installation instructions provided with the software.

2. **Create a New Project**: Open Vivado and create a new project. Select the appropriate project settings and target device according to your hardware setup.

3. **Add Verilog Files**: Add the following Verilog files to your project:
   - top.v
   - testbench.v
   - design.v

4. **Compile the Project**: Compile the project to synthesize the Verilog code and generate a bitstream file for programming your FPGA.

## Running the Program

To run the program on Xilinx Vivado, follow these steps:

1. Open your Vivado project that contains the Verilog files.

2. Perform synthesis and implementation by clicking on the relevant options in Vivado. This step will generate the bitstream file.

3. Once the synthesis and implementation are successful, program your FPGA board with the generated bitstream file.

4. Connect the necessary input and output signals to your FPGA board as per your hardware setup.

5. Power on your FPGA board and ensure that it is properly configured.

6. Run the program by following the instructions provided with your FPGA board or any specific setup required for your hardware.

## Notes

- Make sure to refer to the documentation of your FPGA board and Xilinx Vivado for any board-specific setup instructions and troubleshooting.

- You can modify the Verilog code in the provided files to adapt the MACC unit for your specific requirements.

- Ensure that you have the required licenses and permissions to use Xilinx Vivado and program your FPGA board.

- For any additional information or support, consult the Xilinx Vivado documentation and community forums.


**Author:** Sai Narayan, Yuxin Liu



# Academic Integrity Statement

Please note that all work included in this project is the original work of the author's, and any external sources or references have been properly cited and credited. It is strictly prohibited to copy, reproduce, or use any part of this work without permission from the author's.

If you choose to use any part of this work as a reference or resource, you are responsible for ensuring that you do not plagiarize or violate any academic integrity policies or guidelines. The author of this work cannot be held liable for any legal or academic consequences resulting from the misuse or misappropriation of this work.

Any unauthorized copying or use of this work may result in serious consequences, including but not limited to academic penalties, legal action, and damage to personal and professional reputation. Therefore, please use this work only as a reference and always ensure that you properly cite and attribute any sources or references used.

---