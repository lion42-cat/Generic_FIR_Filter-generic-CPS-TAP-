# Generic_FIR_Filter-generic-CPS-TAP-parallel

I improved the resources of the ROM block to enter the IP by 1/4 using the quadrant symmetry properties
of the trigonometric function in the fabrication of the NCO IP for operating frequency conversion.

Two methods were used to optimize the area and time conditions of FIR Filter. First, before multiplying the
coefficients in the multiplier of the FIR filter, we inserted a register to reduce the critical pass delay, thereby
increasing the motion speed and implementing convolutional behavior with pipelines. Second, to reduce the
area, Time sharing increased the operating frequency of the multiplier module by four times the input data
clock, reducing the area of the circuit by a quarter, and improving performance by 16 times through parallel
processing.


In the process of measuring the AD Converter performance of Xilinx RFSoC, I learned how to use Signal
Analyzer and Signal Generator, and measured ACLR and EVM in five frequency bands.
