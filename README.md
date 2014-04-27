Lab5_Bapty
==========
# Part 1
The program in part 1 begins by loading 8 into the accumulator. It then adds 1 to the accumulator value and outputs it onto port 3. The program continues to loop adding 1 until 9 reaches 0 in 2s compliment hex. Once 0 is reaced the program no longer "jumps negative" and therefore does not increment anymore.

Part 1 was demonstrated to Dr. Neeble on time.

# Part 1 VHDL Simulation

### 0 - 35 ns
Output was given in Lab instructions. Reference instruction worksheet for guidance.
### 35 - 60 ns
ADDI
![alt tag](https://raw.githubusercontent.com/seanbapty/Lab5_Bapty/master/35-60.JPG)
### 65 - 85 ns
OUT
![alt tag](https://raw.githubusercontent.com/seanbapty/Lab5_Bapty/master/65-85ns.JPG)
### 85 - 115 ns
OUT
![alt tag](https://raw.githubusercontent.com/seanbapty/Lab5_Bapty/master/85-115ns.JPG)
### 115 - 145 ns
JN
![alt tag](https://raw.githubusercontent.com/seanbapty/Lab5_Bapty/master/115-145ns.JPG)
### 145 - 165 ns
JN

![alt tag](https://raw.githubusercontent.com/seanbapty/Lab5_Bapty/master/145-165ns.JPG)
### 1000 ns
JMP
![alt tag](https://raw.githubusercontent.com/seanbapty/Lab5_Bapty/master/last.JPG)

# Part 2
Part 2 functionality was never completed see A/B functionality for a cool counter that lets you know when you've reached 100 with an A output.

## A/B Functionality
Two programs were writeen for A/B functionality. The first is a twos compliment converter. Given an input on input 0, the twos compliment is outputted on output 0. See attached file for reference code. The second program counts up from a given input until a negaitve number is input when it counts down. The difference between this functionality and that of Part 2 is that this does not properly roll over when it reaches 99 counting down. See the links below for a demonstration. The Counter was demonstrated on the FPGA. See below for a link to a video of the counter demonstration.

#### 2s Compliment
see above code.
#### Counter
https://www.youtube.com/watch?v=pqOyA308sHc&feature=youtu.be

## Part 2 Questions
###	When the controller’s current state is “FETCH,” what is the status of the following control lines:

  a.	PCLd-High

  b.	IRLd-High

  c.	ACCLd-Low

###	The current state is Decode LoAddr and the IR contains “OUT.”  What are the control signals are asserted, and what will the next state be?

The next state will be Direct IO Execute. The active signals are MEMSEL, Read, MARLoLd, and PCLd.

### What are the three status signals sent from the PRISM datapath to the PRISM controller?

A=0, A<0, IR

### Why is it important that ACCLd signal be active during the execute state for the ADDI instruction?

ADDI is an immediate execute instruction. For this to happem ACCLd must be active to pass on the operand of the instruction to the accumulator.

### What changes are necessary to the PRISM datapath to add another instruction (SUBI, which would subtract an immediate value from the accumulator) to the instruction set?

The multiplexer choosing between the instructions would have to be 4 bit instead of 3 bit. Additionally, the OPSel signal would have to be 4 bit to instruct the multiplexer. 

#### Documentation
C3C Eichman's README was compared to my own to check for the accuracy of the output labels and the answers to part 2 questions. 
