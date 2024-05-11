# RTL-Day-16-Shift-Registers-I

### Problem Statement: Implementing Shift Registers –Part I
#### 1. Serial In Serial Out
#### 2. Serial In Parallel Out

Using Structural Style of Implementation.


### Theory:

A group of flip flops which is used to store multiple bits of data and the 
data is moved from one flip flop to another is known as Shift Register. 
The bits stored in registers shifted when the clock pulse is applied within 
and inside or outside the registers. To form an n-bit shift register, we have 
to connect n number of flip flops. So, the number of bits of the binary 
number is directly proportional to the number of flip flops. The flip flops 
are connected in such a way that the first flip flop's output becomes the 
input of the other flip flop.

A Shift Register can shift the bits either to the left or to the right. A Shift 
Register, which shifts the bit to the left, is known as "Shift left register", 
and it shifts the bit to the right, known as "Right left register".
The shift register is classified into the following types:

o Serial In Serial Out
o Serial In Parallel Out
o Parallel In Serial Out
o Parallel In Parallel Out


#### Serial IN Serial OUT (SISO)
In "Serial Input Serial Output", the data is shifted "IN" or "OUT" serially. 
In SISO, a single bit is shifted at a time in either right or left direction under 
clock control.
Initially, all the flip-flops are set in "reset" condition i.e. Q3 = Q2 = Q1 = 
Q0 = 0. If we pass the binary number 1111, the LSB bit of the number is 
applied first to the Din bit. The D0 input of the 0th flip flop, i.e., FF-0, is 
directly connected to the serial data input D0. The output Q0 is passed to 
the data input D1 of the next flip flop. This process remains the same for 
the remaining flip flops. The block diagram of the "Serial IN Serial 
OUT" is given below.

![image](https://github.com/tusharshenoy/RTL-Day-16-Shift-Registers-I/assets/107348474/f88a8136-19b6-45b2-84e4-dc1a0db306c8)

#### Simulation Output:

![image](https://github.com/tusharshenoy/RTL-Day-16-Shift-Registers-I/assets/107348474/cbc68a7f-522e-4216-8c7e-f40de59f2569)



#### Serial IN Parallel OUT (SIPO)
In the "Serial IN Parallel OUT" shift register, the data is passed serially to 
the flip flop, and outputs are fetched in a parallel way. The data is passed
bit by bit in the register, and the output remains disabled until the data is 
not passed to the data input. When the data is passed to the register, the 
outputs are enabled, and the flip flops contain their return value
Below is the block diagram of the 4-bit serial in the parallel-out shift 
register. The circuit having four D flip-flops contains a clear and clock 
signal to reset these four flip flops. In SIPO, the input of the second flip 
flop is the output of the first flip flop, and so on. The same clock signal is 
applied to each flip flop since the flip flops synchronize each other. The 
parallel outputs are used for communication.

![image](https://github.com/tusharshenoy/RTL-Day-16-Shift-Registers-I/assets/107348474/3fd2b360-aeaf-4641-8509-841ba4a0f29a)

#### Simulation Output:
![image](https://github.com/tusharshenoy/RTL-Day-16-Shift-Registers-I/assets/107348474/bcaa5b93-4a15-4d98-bae3-bfdc9836a412)
