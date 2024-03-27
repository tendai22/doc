
<div style="text-align: center">
TEXAS INSTRUMENTS 

9900 

TMS 9995 

16-Bit Microcomputer 

MICROPROCESSOR SERIES

Data Manual 
</div>

<hr style="page-break-before: always;" />

TABLE OF CONTENTS 

```
1. INTRODUCTION 
1.1 Description 
1.2 Key Features 

2. ARCHITECTURE 

2.1 Memory Allocation 
2.2 TMS 9995 Organization 
2.2.1 Arithmetic Logic Unit 
2.2.2 Internal Registers 
2.3 TMS 9995 Interfaces 
2.3.1 TMS 9995 Memory Interface 
2.3.2 TMS 9995 Interrupts 
2.3.3 Communication Register Unit Interface 
2.3.4 External Instructions 
2.3.5 TMS 9995 Internal ALU/Other Operation Cycles 


3. TMS 9995 PIN DESCRIPTION 

4. TMS 9995 INSTRUCTION SET

4.1 Definition 
4.2 Addressing Modes 
4.2.1 Workspace Register Addressing, R 
4.2.2 Workspace Register Indirect Addressing, *R 
4.2.3 Workspace Register Indirect Auto Increment Addressing, *R+ 
4.2.4 Symbolic (Direct) Addressing, @LABEL 
4.2.5 Indexed Addressing, @TABLE(R) 
4.2.6 Immediate Addressing 
4.2.7 Program Counter Relative Addressing 
4.2.8 CRU Relative Addressing 
4.3 Definition of Terminology 
4.4 Status Register Manipulation 
4.5 Instructions 
4.5.1 Dual Operand Instructions with Multiple Addressing for Source and Destination Operand 
4.5.2 Dual Operand Instructions with Multiple Addressing Modes for the Source Operand and Workspace Register Addressing for the Destination 
4.5.3 Signed Multiply and Divide Instructions 
4,5.4 Extended Operation (XOP) Instructions 
4.5.5 Single Operand Instructions 
4.5.6 CRU Multiple-Bit Instructions 
4.5.7 CRU Single Bit Instructions 
4.5.8 Jump Instructions 
4.5.9 Shift Instructions 
4.5.10 Immediate Register Instructions 
4.5.11 Internal Register Load Immediate Instructions 
4.5.12 Internal Register Load and Store Instructions 
4.5.13 Return Workspace Pointer (RTWP) Instruction 
4.5.14 External Instructions 
4.5.15 Mid Interrupt Codes 
4.6 Instruction Execution 
4.6.1 Microinstruction Cycle 
4.6.2 Execution Sequence 
4.6.3 Instruction Execution Times 

TABLE OF CONTENTS (Concluded) 

5. ELECTRICAL CHARACTERISTICS 

5.1 Absolute Maximum Ratings 
5.2 Recommended Operating Conditions 
5.3 Electic Characteristics
5.4 Clock Characteristics 
5.4.1 Internal Clock Option 
5.4.2 External Clock Option 
5.5 Timing Requirements 
5.6 Switching Characteristics 

6. MECHANICAL SPECIFICATIONS 

LIST OF ILLUSTRATIONS 

Figure 1 Word and Byte Formats 
Figure 2 TMS 9995 Memory Map 
Figure 3 TMS 9995 Block Diagram 
Figure 4 TMS 9995 Flow Chart 
Figure 5 Status Register Bit Assignments 
Figure 6 Workspace Registers Usable As Index Registers 
Figure 7 Workspace Pointer and Registers 
Figure 8 TMS 9995 Memory Interface 
Figure 9 TMS 9995 Memory Read Cycle 
Figure 10 Memory Write Cycle 
Figure 11 TMS 9995 Hold State 
Figure 12 Decrementer Functional Block Diagram 
Figure 13 Wait State Generation for External Memory, External CRU Cycles, and External Instruction Cycles 
Figure 14 External Circuitry for Invoking/Inhibiting Automatic First Wait State Generation Feature 
Figure 15 TMS 9995 Reset Signal Timing Relationships 
Figure 16 TMS 9995 NMI Signal Timing Relationships 
Figure 17 Functional Block Diagram of Internal Interrupt Request Latch 
Figure 18 TMS 9995 CRU Interface 
Figure 19 CRU Address Map 
Figure 20 TMS 9995 CRU Input Cycle 
Figure 21 TMS 9995 CRU Output Cycle 
Figure 22 Single Bit CRU Address Development 
Figure 23 LDCR/STCR Data Transfers 
Figure 24 Pin Assignments 
Figure 25 Internal Oscillator 
Figure 26 External Oscillator 
Figure 27 TMS 9995 Clock Timing 
Figure 28 TMS 9995 Memory Interface Timing 
Figure 29 TMS 9995 CRU External Instruction Timing 
Figure 30 TMS 9995 RESET and NMI Timing 
Figure 31 TMS 9995 HOLD Timing 
Figure 32 TMS 9995 Interrupt Input Timing 
Figure 33 TMS 9995 Event Counter Input Timing 
Figure 34 Measurement Points for Switching Characteristics 
Figure 35 Switching Characteristics Test Load Circuit 

LIST OF TABLES 

Table 1 Dedicated Workspace Registers 
Table 2 Interrupt Level Data 
Table 3 Flag Register Bit Definitions 
Table 4 TMS 9995 External Instruction Codes 
Table 5 TMS 9995 Pin Description 
Table 6 Definition of Terminology 
Table 7 Status Register Bit Definitions 
Table 8 Execution Sequence Example 
Table 9 Instruction Execution Times 
Table 10 Operation Address Derivation
Table 11 Instruction Execution Time Examples

```

<hr style="page-before-break: always:" />

# 1. INTRODUCTION 

## 1.1 DESCRIPTION 

The TMS 9995 microcomputer is a single-chip 16-bit central processing unit (CPU) with 256 bytes of on-chip random access memory (RAM). A member of the TMS 9900 family of microprocessor and peripheral circuits, the TMS 9995 is fabricated using N-channel silicon-gate MOS technology. The rich instruction set of the TMS 9995 is based upon a unique memory-to-memory architecture that features multiple register files resident in memory. Memory-resident register files allow faster response to interrupts and increased programming flexibility. The inclu- sion of RAM, timer function, clock generator, interrupt interface, and a flexible flag register on-chip facilitates support of small system implementations. 

All members of the TMS 9900 family of peripheral circuits are compatible with the TMS 9995. Providing a per- formance upgrade to the TMS 9900 microprocessor, the TMS 9995 instruction set is an opcode-compatible super- set of the TMS 9900 processor family. 

## 1.2 KEY FEATURES 

* 16-Bit instruction word 
* Memory-to-Memory architecture 
* 65,536 byte/32,768 word directly addressable memory address space 
* Minicomputer instruction set including signed multiply and divide instructions 
* Multiple 16-word register files (Workspaces) residing in memory 
* 256 bytes of on-chip RAM 
* Separate memory and interrupt bus structures 
* 8-Bit memory data bus 
* 7 prioritized hardware interrupts 
* 16 software interrupts (XOPS) 
* Programmed and DMA I/O capability 
* Serial I/O via communication register unit (CRU) 
* On-chip time/event counter 
* On-chip programmable flags (16) 
* Macro instruction detection (MID) feature 
* Automatic first wait state generation feature 
* Single 5-volt supply 
* 40-pin package 
* N-Channel silicon gate MOS technology 
* On-chip clock generator 

# 2. ARCHITECTURE 

## 2.1 MEMORY ALLOCATION 

The basic word of the TMS 9995 architecture is 16 bits in length. These 16 bits are divided into 8-bit bytes for external memory in the manner shown in Figure 1. A word is, therefore, defined as two consecutive 8-bit bytes in memory. All words (instruction opcodes, operand addresses, word-length data, etc.) are restricted to even address boundaries, i.e., the most significant half, or 8 bits, resides at an even address and the least significant half resides at the subsequent odd address. Any memory access involving a full word that is directed by software to utilize an odd address will result in the word starting with this odd address minus one to be accessed. 

 <figure>
 <img src="img/fig1-word-and-byte-formats.png">
 <figcaption>FIGURE 1 -- WORD AND BYTE FORMATS</figcaption>
 </figure>
 
The instruction set of the TMS 9995 allows both word and byte operations. Byte instructions may address either byte as necessary. A byte access of this type will not affect the other byte of the word involved since the other byte will not be accessed during the execution of the byte instruction. 

The TMS 9995 memory map is shown in Figure 2. Shown are the locations in the memory address space for the Reset, NMI, other interrupt and XOP trap vectors, and the dedicated address segments for the on-chip RAM and the on-chip memory-mapped 1/0. 

 <figure>
 <img widto=300 src="img/fig2-tms9995-memory-map.png">
 <figcatpion>FIGURE 2 - TMS9995 MEMORY MAP </figcatpion>
 </figure>


## 2.2 TMS 9995 ORGANIZATION 

The block diagram of the TMS 9995 is shown in Figure 3. A flow chart, representative of the TMS 9995 functional operation, is shown in Figure 4. 

 <figure>
 <img width=600 src="img/fig3-tms9995-block-diagram.png">
 <figcaption> FIGURE 3 TMS9995 BLOCK DIAGRAM </figcaption> 
 </figure>

 <figure>
 <img src="img/fig4-tms9995-flow-chart.png">
 <figcaption>FIGURE 4 – TMS9995 FLOW CHART </figcaption>
 </figure>

### 2.2.1 Arithmetic Logic Unit 

The arithmetic logic unit (ALU) is the computational component of the TMS 9995. It performs all arithmetic and logic functions required to execute instructions. The functions include addition, subtraction, AND, OR, exclusive OR, and complement. A separate comparison circuit performs the logic and arithmetic comparisons to control bits O through 2 of the status register. The ALU is arranged in two 8-bit halves to accommodate byte operations. Each half of the ALU operates on one byte of the operand. During word operand operations, both halves of the ALU function in conjunction with each other. However, during byte operand processing, results from the least significant half of the ALU are ignored. The most-significant half of the ALU performs all operations on byte operands so that the status circuitry used in word operations is also used in byte operations. 

### 2.2.2 Internal Registers 

The following three (3) internal registers are accessible to the user (programmer): 

* Program Counter (PC) 
* Status Register (ST) 
* Workspace Pointer (WP) 

#### 2.2.2.1 Program Counter 

The program counter (PC) is a 15-bit counter that contains the word address of the next instruction following the instruction currently executing. The microprocessor references this address to fetch the next instruction from memory and increments the address in the PC when the new instruction is executing. If the current instruction in the microprocessor alters the contents of PC, then a program branch occurs to the location specified by the altered contents of PC. All context switching (see Section 2.2.2.3.2) operations plus simple branch and jump instructions affect the contents of PC. 

#### 2.2.2.2 Status Register 

The status register (ST) is a fully implemented 16-bit register that reports the results of program comparisons, indi- cates program status conditions, and supplies the arithmetic overflow enable and interrupt mask level to the inter- rupt priority circuits. Each bit position in the register signifies a particular function or condition that exists in the microprocessor. Figure 5 illustrates the bit position assignments. Some instructions use the status register to check for a prerequisite condition; others affect the values of the bits in the register; and others load the entire status register with a new set of parameters. Interrupts also modify the status register. The description of the instruction set later in this document details the effect of each instruction on the status register (see Section 3). 

 <figure>
 <img src="img/fig5-status-register-bit-assignments.png">
 <figcaption>

* ST7, ST8, ST9, and ST11 are not used in the TMS9995, but still physically exist in the register. These bits could therefore be used as flag bits, but software transportability should be kept in mind when doing so as these bits are defined in other 9900 microprocessor family and 990 minicomputer family products. 

+ Do not allow the overflow Interrupt Enable bit (ST10 OV EN) to be set to 1 as the arithmetic overflow is not functional on current devices. This will be corrected at a later date. 

 |||||||
 |--|--|--|--|--|--|
 L> | Logical Greater Than C | Carry Out | X | XOP In Progress |
 A> |Arithmetic Greater Than OV |Overflow |OV EN |Overflow Interrupt Enable 
 EQ | Equal/TB Indicator |OP | Parity (Odd No. of Bits) ||



#### 2.2.2.3 Workspace 

The TMS 9995 uses blocks of memory words called workspaces for instruction operand manipulation, A work- space occupies 16 contiguous words in any part of memory that is not reserved for other use. The individual workspace registers may contain data or address, or function as operand registers, accumulators, address registers, or index registers. Some workspace registers take on special significance during execution of certain instructions. Table 1 lists each of these dedicated workspace registers and the instructions that use them. Figure 6 defines the workspace registers that are allowed to be used as index registers. 


 TABLE 1 - DEDICATED WORKSPACE REGISTERS 

 REGISTER NO.|CONTENTS |USED DURING
 |--|--|--| 
 0 |Shift count (optional) |Shift instructions (SLA, SRA, 
SRC, and SLC) 
 |Multiplicand and MSW<br>of result | Signed Multiply 
 |MSW of dividend and<br>quotient |Signed Divide 
 1|LSW of result| Signed Multiply
 |LSW of dividend and<br>remainder| Signed Divide 
 11|Return Address|Branch and Link Instruction (BL) 
 |Effective Address |Extended Operation (XOP) 
 12|CRU Base Address 
13|Saved WP register 
14|Saved PC register 
15|Saved ST register 

DATA 
OR 
ADDRESSES 
CRU instructions (SBO, SBZ, TB, LDCR, and STCR) 
Context switching (BLWP, RTWP, XOP, interrupts) 
Context switching (BLWP, RTWP, XOP, interrupts) 
Context switching (BLWP, RTWP, XOP, interrupts) 
WORKSPACE REGISTERS 
0 
1 
23 
4 
5 
1 6 
росси 
7 
8 
9 
10 
INDEX 
CAPABILITY 
11 
12 
13 
14 
15 
NOTE: The WP register contains the address of workspace register zero. 
FIGURE 6 
WORKSPACE REGISTERS USABLE AS INDEX REGISTERS 
6 
##### 2.2.2.3.1 Workspace Pointer 

To locate the workspace in memory, a hardware register called the workspace pointer (WP) is used. The workspace pointer is a 16-bit register that contains the memory address of the first word in the workspace. The address is left-justified with the 16th bit (LSB) hardwired to logic zero. The TMS 9995 accesses each register in the work- space by adding twice the register number to the contents of the workspace pointer and initiating a memory re- quest for that word. Figure 7 illustrates the relationship between the workspace pointer and its corresponding workspace in memory

WORKSPACE POINTER 
(WP) 
WORKSPACE 
ADDRESS 
WORKSPACE REGISTERS 
WP 
0 
WP + 0016 
1 
WP + 0216 
2 
WP + 0416 
3 
WP + 0616 
MICROPROCESSOR ADDS 
WORKSPACE POINTER (WP) TO TWICE THE REGISTER NUMBER TO 
DERIVE ACTUAL REGISTER ADDRESS 
WP + 0816 
5 
WP + 0A16 
6 
WP + 0C16 
7 
WP + 0E 16 
8 
WP + 1016 
9 
WP + 1216 
10 
WP + 1416 
WP + 1616 
11 
WP + 1816 
12 
NOTE: All memory word addresses are even, 
WP + 1A16 
13 
14 
WP + 1C16 
WP + 1E16 
15 

FIGURE 7 WORKSPACE POINTER AND REGISTERS 

For instructions performing byte operations, use of the workspace register addressing mode (see Section 3.2) will result in the most significant byte of the workspace register involved to be used as the operand for the operation. Since the workspace is also addressable as a memory address, the least significant byte may be directly addressed using any one of the general memory addressing modes. 

##### 2.2.2.3.2 Context Switching 

The workspace concept is particularly valuable during operations that require a context switch, which is a change from one program environment to another, as in the case of a subroutine or an interrupt service routine. Such an operation using a conventional multi-register arrangement requires that at least part of the contents of the register file be stored and reloaded using a memory cycle to store or fetch each word. The TMS 9995 accomplishes this operation by changing the workspace pointer. A context switch requires only three store cycles and two fetch cycles, exchanging the program counter, status register and workspace pointer. After the switch, the workspace pointer contains the starting address of a new 16-word workspace in memory for use in the new routine. A corre- sponding time saving occurs when the original context is restored. Instructions in the TMS 9995 that result in a context switch include: Call subroutine (BLWP), Return from Subroutine (RTWP) and the Extended Operation (XOP) instruction. All interrupts also cause a context switch by forcing the TMS 9995 to trap to a service sub- routine. 

## 2.3 TMS 9995 INTERFACES 

Each TMS 9995 system interface uses one or more of the signals from one or more of the signal groupings given in the pin description list in Section 3. Each interface is described in detail in the following paragraphs. 

### 2.3.1 TMS 9995 Memory Interface 

The signals used in the TMS 9995 interface to system memory are shown in Figure 8. 


A0-A14, A15/CRUOUT 
DO-D7 
MEMEN 
DBIN 
TMS9995 
WE/CRUCLK 
READY 
IAQ/HOLDA 
HOLD 
MEMORY SYSTEM 
AND/OR DMA CONTROLLER 
IAQ/HOLDA AND 
HOLD ARE NOT REQUIRED FOR SIMPLE MEMORY SYSTEMS BUT WILL 
BE USED BY DMA 
CONTROLLERS 

FIGURE 8 TMS9995 MEMORY INTERFACE 

#### 2.3.1.1 External Memory Address Space 

The details of memory accesses that are external to the TMS 9995 (off-chip accesses) are given in the following paragraphs. (See Figure 2 for the addresses that are in the external memory-address space.) 

##### 2.3.1.1.1 Memory Read Operations 

To perform a memory read operation, the TMS 9995 first outputs the appropriate address on A0-A14 and A15/ CRUOUT, and asserts MEMEN. The TMS 9995 then places its data bus drivers in the high impedance state, asserts DBIN, and then reads in the data byte. Completion of the memory read cycle and/or generation of Wait states is determined by the READY input as detailed in Section 2.3.1.3. Timing relationships of the memory read sequence are shown in Figure 9. Note that MEMEN remains active (low) between consecutive memory operations. 

CLKOUT 
A0-A14, A15/CRUOUT 
NOTES: 
2 
DO-D7 
3 
MEMEN 
DBIN 
WE/CRUCLK 
IAQ/HOLDA 
MEMORY READ 
MEMORY READ 
NO WAIT STATE 
ONE WAIT STATE 
I 
1. Valid address 
2. In input mode (drivers @ High-Z) 
3. Memory Read Data must be valid at CLKOUT edge indicated 
4. IAQ/HOLDA will only be asserted during memory read cycles if an instruction opcode is being read (timing shown is for an instruc- tion fetch from external memory -, i.e., two consecutive byte reads). 

FIGURE 9. TMS9995 MEMORY READ CYCLE 

Although not explicitly shown in Figure 9, reading a word (two 8-bit bytes) from external memory requires two memory read cycles that occur back-to-back (a Hold state request will not be granted between cycles). If an instruction directs that a byte read from external memory is to be performed, only the byte specifically addressed will be read (one memory read cycle). External words are accessed most-significant (even) byte first, followed by the least-significant (odd) byte. 

During memory read cycles in which an instruction opcode is being read, IAQ/HOLDA is asserted as shown in Figure 9. Note that since an instruction opcode is a word in length, IAQ/HOLDA remains asserted between the two byte read operations involved when an instruction opcode is read from the external memory address space. 

##### 2.3.1.1.2 Memory Write Operations 

To perform a memory write operation, the TMS 9995 first outputs the appropriate address on A0-A14 and A15/ CRUOUT, and asserts MEMEN. The TMS 9995 then outputs the data byte being written to memory on pins DO through D7, and then asserts WE/CRUCLK. Completion of the memory write cycle and/or generation of Wait states is determined by the Ready input as detailed in Section 2.3.1.3. Timing relationships of the memory write sequence are shown in Figure 10. Note that MEMEN remains active (low) between consecutive memory operations. 

CLKOUT 
A0-A14, A15/CRUOUT 
NOTES: 
DO-D7 
MEMEN 

DBIN 
WE/CRUCLK 
IAQ/HOLDA 
Valid address 
MEMORY WRITE 
NO WAIT STATE 
Valid memory write data 
IAQ/HOLDA will never be asserted during a memory write cycle 
MEMORY WRITE ONE WAIT STATE 

FIGURE 10 - TMS9995 MEMORY WRITE CYCLE 

Writing a word (two 8-bit bytes) to external memory requires two memory write cycles that occur back-to-back, (A Hold state request will not be granted between cycles.) If an instruction directs that a byte write to external memory is to be performed, only the byte specifically addressed will be written (one memory write cycle). External words are accessed most-significant (even) byte first followed by the least-significant (odd) byte. 

##### 2.3.1.1.3 Direct Memory Access 

The TMS 9995 Hold state allows both external devices and the TMS 9995 to share a common external memory. To gain direct memory access (DMA) to the common memory, the external device first requests the TMS 9995 to enter a Hold state by asserting (taking low) the HOLD input. The TMS 9995 will then enter a Hold state following completion of the cycle (either memory, CRU, external Instruction, or internal ALU cycles) that it is currently performing. Note, however, that a Hold state is not entered between the first and second byte accesses of a full word in the external memory address space, and a Hold state is not entered between the first and second clock cycles of a CRU cycle. 

Upon entry of a Hold state, the TMS 9995 puts its address, data, DBIN, and WE/CRUCLK drivers in the high impedance mode, and asserts IAQ/HOLDA. The external device can then utilize these signal lines to communicate with the common memory. After the external device has completed its memory transactions, it releases HOLD, and the TMS 9995 continues instruction execution at the point where it had been suspended. Timing relationships for this sequence are shown in Figure 11. 

CLKOUT 
AO-A14, A15/CRUOUT 
00-07 
MEMEN 
DBIN 
WE/CRUCLK 
HOLD 
IAQ/HOLDA 
NOTES: 
4 
VALID ADDRESS 
VALID WRITE DATA 
MEMORY WRITE, NO WAIT 
STATES 
ANY NUMBER OF COMPLETE CLKOUT CYCLES 
4 
se 
HOLD STATE 
10 
NEXT CYCLE (MEMORY, CRU, EXTERNAL INSTRUCTION, OR INTERNAL ALU CYCLE) 
Cycle before the hold state could have been memory (with any number of wait states), CRU, external instruction, or internal ALU HOLD must be valid at last low-to-high CLKOUT transition of a cycle for next low-to-high CLKOUT transition to begin a hold state 
In high-impedance mode (output drivers) 
Next cycle will begin after first low-to-high CLKOUT transition at which HOLD is high 
- 

FIGURE 11 – TMS9995 HOLD STATE 

To allow DMA loading of external memory on power-up, the TMS 9995 does not begin instruction execution after a Reset state until HOLD has been removed if HOLD was active (low) at the time RESET was taken from low to high RESET released). 

External devices cannot access the internal (on-chip) memory address space of the TMS 9995 when it is in the Hold state. 

Since IAQ (Instruction Opcode Acquisition) and HOLDA (Hold Acknowledge) are multiplexed on a single signal, IAQ/HOLDA, this signal must be gated with MEMEN using external logic to separate IAQ and HOLDA, When MEMEN = 0, IAQ/HOLDA can indicate IAQ, and when MEMEN = 1, IAQ/HOLDA can indicate HOLDA. 

#### 2.3.1.2 Internal Memory Address Space 

Access of the internal (on-chip) memory address space is transparent to the TMS 9995 instruction set. That is, operands can be read from and written into locations in the internal memory space simply by using the appro- priate addresses via any of the addressing modes in the TMS 9995 instruction set, and instructions can even be executed from the internal memory space by loading the appropriate address into the program counter of the TMS 9995. 

The TMS 9995 indicates to the external world when these internal memory address space accesses are occurring by asserting the same signals used for accessing external memory (see Figure 8) in a manner very similar to an ex- ternal memory address space access. There are a few differences in these cycles, however, and these differences are detailed in the following paragraphs. 

When performing an internal memory address space access, the TMS 9995 outputs the same signals that it would for an external memory space access, with the same timing (see Figures 9 and 10) except for the following: 
(1) 
(2) 
A single cycle (read or write) is output as both internal bytes are accessed simultaneously. (Externally, it appears as though a single byte memory access cycle to an internal address is occurring.) 
The cycle always has no Wait states, and the READY input is ignored by the TMS 9995 (see Section 2.3.2.3). 
(3) During read cycles, the data bus (DO-D7) output drivers are put in the high-impedance mode. During write 
cycles, the data bus outputs non-specific data, 
+ 
During read cycles to the internal memory address space, the TMS 9995 does not make the read data available to the external world. If an instruction is executed from the internal memory address space, IAQ/HOLDA is still asserted, but only during the one read cycle shown externally while the full word is read internally. 
When in a Hold state, external devices are not able to access the internal memory address space. 
2.3.1.2.1 Internal RAM 
The 256 bytes of internal random-access read/write memory (RAM), the memory addresses of which are shown in Figure 2, are organized internally as 128 16-bit words. Since the TMS 9995 has 16-bit internal data paths, two 8-bit bytes are accessed each time a memory access is made to the internal RAM. 
Byte accesses are transparent to the internal RAM. That is, when an instruction addresses a byte in the internal RAM, the TMS 9995 will: (1) read the entire word but only use the byte specifically addressed for a read opera- tion and, (2) only write to the specifically addressed byte and not alter the contents of the other byte in the word during a write operation. 
2.3.1.2.2 Decrementer (Timer/Event Counter) 
Accessible via one of the word addresses (see Figure 2) of the internal memory-mapped I/O address space is the de- crementer. The on-chip decrementer logic can function as a programmable real-time clock, an event timer, or as an external event counter. A block diagram of the decrementer that is representative of its functional operation (but not necessarily representative of its specific logic implementation) is shown in Figure 12. 
INTERNAL CLOCK (MACHINE STATE FREQUENCY) 
FLAGO 
INT4/EC 
4 
FLAGI 
обе 
SYNCHRONIZER 
DECREMENT BY ONE 
16 BIT INTERNAL 
DATA PATH 
STARTING COUNT STORAGE 
REGISTER (16 BITS) 
PULSE GENERATED WHEN 
LEVEL 3 INTERRUPT CONTEXT SWITCH IS TAKEN 
PULSE GENERATED 
DURING RESET INTERRUPT SEQUENCE 
FLAG1 
CLEAR 
LEVEL 3 INTERRUPT 
REQUEST LATCH 
DECREMENTING 
REGISTER 
INPUT 
(16 BITS) 
QUTPUT 
COUNT = 0 
TO INPUT OF LEVEL4 INTERNAL INTERRUPT REQUEST LATCH 
16 BIT INTERNAL 
DATA PATH 
NOTE: FLAGO and FLAG1 are bits in the Flag Register 
FIGURE 12 DECREMENTER FUNCTIONAL BLOCK DIAGRAM 
12 
LEVEL 3 
INTERRUPT REQUEST 
CRU INPUT DATA FOA CAU ADDRESS OF FLAG3 IN FLAG REGISTER 
2.3.1.3 
The decrementer is configured as either a timer or an event counter using bit FLAGO of the internal Flag register. The decrementer is enabled/disabled using bit FLAG1 of the internal Flag register. (See Section 2.3.3.2.1 for de- tails of the Flag register and accessing the bits in it.) When FLAGO is set to zero, the decrementer will function as a timer. When FLAGO is set to one, the decrementer will function as an event counter. When FLAG1 is set to zero, the decrementer is disabled and will not be allowed to decrement and request level 3 interrupt traps. When FLAG1 is set to one, the decrementer is enabled and will decrement and request level 3 interrupt traps. It should be noted that when the decrementer is configured as a timer, INT4/EC will be usable as an external interrupt level 4 trap request. When the decrementer is configured as an event counter, INT4/EC is the input for the "event counter" pulses, and an interrupt level 4 trap request input is no longer available externally or internally. 
The general operation of the decrementer is as follows, FLAGO of the Flag register is first set to select the desired mode of operation. The desired start count is then loaded into the Starting Count Storage Register by performing a memory write of the count word to the dedicated internal memory mapped I/O address of the decrementer. (This also loads the Decrementing Register with the same count.) The decrementer is then enabled and allowed to start decrementing by setting FLAG1 of the Flag Register to one. (Both FLAGO and FLAG1 are set to zero when the TMS 9995 is reset. (See Section 2.3.2.1.1.) When the count in the Decrementing Register reaches zero, the level 3 internal interrupt request latch is set (see Section 2.3.2.2.3), the Decrementing Register is reloaded from the Starting Count Storage Register, and decrementing continues. Note that writing a start count of 000016 to the decrementer will disable it. 
When configured as a timer, the decrementer functions as a programmable real-time clock by decreasing the count in the Decrementing Register by one for each fourth CLKOUT cycle. Loading the decrementer with the appro- priate start count causes an interrupt to be requested every time the count in the Decrementing Register reaches zero. The decrementer can also be used as an event timer when configured as a timer by reading the decrementer (which is accomplished by performing a memory read from the dedicated internal memory mapped I/O address of the decrementer) at the start and stop points of the event of interest and comparing the two values. The dif- ference will be a measurement of the elapsed time. 
When configured as an event counter, operation is as previously discussed except that each high-to-low transition on INT4/EC will cause the Decrementing Register to decrement. These INT4/EC high-to-low transitions can be asynchronous with respect to CLKOUT. Note that INT4/EC can function as a negative edge-triggered interrupt by loading a start count of one. 
The decrementer should always be accessed as a full word (two 8-bit bytes). Reading a byte from the decrementer does not present a problem since only the byte specifically addressed will be read. Writing a single byte to either of the bytes of the decrementer will result in the data byte being written into the byte specifically addressed and random bits being written into the other byte of the decrementer. 
Wait State Generation 
Wait states can be generated for external memory cycles, external CRU cycles and external instruction cycles for the TMS 9995 using the READY input. A Wait state is defined as extension of the present cycle by one CLKOUT cycle. The timing relationships of the READY input to the memory interface and the CRU interface signals are shown in Figure 13. Note that Wait states cannot be generated for memory cycles that access the internal memory address space or for CRU cycles that access the internal CRU address space, as the READY input will be ignored during these cycles. 
The Automatic First Wait State Generation feature of the TMS 9995 allows a Wait state to be inserted in each ex- ternal memory cycle, regardless of the READY input, as shown in Figure 13. The Automatic First Wait State Generation feature can be invoked when RESET is asserted. If READY is active (high) when RESET goes through a low-to-high transition, the first Wait state in each external memory cycle will be automatically generated. If READY is inactive (low) when RESET goes through a low-to-high transition, no Wait state will be inserted auto- matically in each external memory cycle. There is a one and one-half CLKOUT cycle time minimum setup time requirement on READY before the RESET low-to-high transition. The recommended external circuitry for invoking or inhibiting the Automatic First Wait State Generation feature is shown in Figure 14. Note that this feature does not apply to internal memory address space accesses, external instruction cycles, or any CRU cycles. Wait states cannot be generated during internal ALU/other operation cycles. The READY input is ignored during these cycles. 
13 
MEMORY CYCLES: 
CLKOUT 
MEMEN 
READY 
NO WAIT 
STATES 
CRU CYCLES AND EXTERNAL INSTRUCTION CYCLES: 
CLKOUT 
DBIN or WE/CRUCLK 
READY 
NOTES: 
NO WAIT STATES 
10 
ONE WAIT STATE, AUTOMATIC FIRST WAIT STATE FEATURE NOT ACTIVE 
ONE WAIT STATE, AUTOMATIC FIRST WAIT STATE FEATURE 
ACTIVE 
10 
ONE WAIT STATE (AUTOMATIC FIRST WAIT STATE 
FEATURE DOES NOT APPLY 
TO CRU CYCLES) 
First sample time of READY in cycle 
Second sample time of READY in cycle. Additional wait states can be generated by keeping READY low at this and subsequent sample times. 
XXXX denotes "don't care" 
VCC 
FROM MEMORY 
VCC 
바카 
74LS14 
FIGURE 13 
WAIT STATE GENERATION FOR EXTERNAL MEMORY, EXTERNAL CRU CYCLES, AND EXTERNAL INSTRUCTION CYCLES 
VCC 
FROM MEMORY 
READY 
7407 
TMS9995 
RESET 
READY 
7407 
TMS9995 
RESET 
RESET REQUEST (TTL RISE/FALL 
TIMES) 
(a) INHIBITING AUTOMATIC FIRST 
WAIT STATE, R-C POWER-UP RESET 
FROM 
MEMORY 
SYSTEM 
VCC 
READY 
TMS9995 
(b) INHIBITING AUTOMATIC FIRST 
WAIT STATE, TTL-SPEED RESET REQUEST 
FIGURE 14 
(c) INVOKING AUTOMATIC FIRST 
WAIT STATE (RESET CAN BE 
R-C POWER-UP OR OTHER- 
WISE) 
EXTERNAL CIRCUITRY FOR INVOKING/INHIBITING 
AUTOMATIC FIRST WAIT STATE GENERATION FEATURE 
14 
2.3.2 
TMS 9995 Interrupts 
The TMS 9995 implements seven prioritized, vectored interrupts, some of which are dedicated to predefined func- tions and the remaining are user-definable. Table 2 defines the source (internal or external), assignment, priority level, trap vector location in memory, and enabling/resulting status register interrupt mask values for each interrupt. 
TABLE 2 - INTERRUPT LEVEL DATA 
PRIORITY 
LEVELS 
(In Order of Priority) 
NOTES: 
VECTOR 
LOCATION 
(Memory 
MASK VALUES 
TO ENABLE 
ACCEPTING 
Address, 
In Hex) 
THE INTERRUPT 
(ST12 THRU ST15) 
0 
0000 
(Highest Priority) 
MID 
NMI 
MASK VALUE 
AFTER TAKING 
THE INTERRUPT (ST12 THRU ST15) 
SOURCE AND 
ASSIGNMENT 
016 thru F16 
0000 
(see Note 1) 
External: Reset 
(RESET Signal) 
0008 
016 thru F16 
(see Note 2) 
(see Note 1) 
0001 
(see Note 2) 
Internal: MID 
016 thru F16 
FFFC 
0000 
(see Note 
External: User- 
defined (NMI 
Signal) 
External: User- 
1 
0004 
1 16 thru F 16 
0000 
defined (INT1 
Signal) 
2 
0008 
(see Note 2) 
216 thru F 16 
0001 
Internal: 
(see Note 3) 
(see Note 2) 
Arithmetic Overflow 
(see Note 5) 
Internal: 
3 
000C 
316 thru F16 
0002 
4 
0010 
416 thru F 16 
Decrementer 
External: User- 
0003 
defined (INT4/EC 
Signal; see Note 4). 
1. Level 0, MID, and NMI cannot be disabled with the Interrupt Mask. 
2. MID and Level 2 use the same trap vector and change the Interrupt Mask to the same value. 
3. Generation of a Level 2 request by an Arithmetic Overflow condition (ST4 set to 1) is also enabled/disabled by bit ST10 of the 
Status Register. 
1. INT4/EC is not an input for Level 4 interrupt trap requests (Level 4 is not usable) when the Decrementer is configured as an 
Event Counter. 
1. Priority Level 2 Internal Arithmetic Overflow should not be used as the arithmetic overflow is not functional on current devices. 
This will be corrected at a later date. 
The TMS 9995 will grant interrupt requests only between instructions (except for Level 0 Reset), which will be granted whenever it is requested, i.e., in the middle of an instruction). The TMS 9995 performs additional func- tions for certain interrupts, and these functions will be detailed in subsequent sections. The basic sequence that the TMS 9995 performs to service all interrupt requests is as follows: 
(1) 
Prioritize all pending requests and grant the request for the highest priority interrupt that is not masked by the current value of the interrupt mask in the status register or the instruction that has just been executed. (See Section 4.5 for these instructions.) 
(2) 
Make a context switch using the trap vector specified for the interrupt being granted. 
(3) 
(4) 
Reset ST7 through ST11 in the status register to zero, and change the interrupt mask (ST12 through ST15) as appropriate for the level of the interrupt being granted. 
Resume execution with the instruction located at the new address contained in the PC, and using the new WP. All interrupts will be disabled until after this first instruction is executed, unless: (a) RESET is requested, in which case it will be granted, or (b) the interrupt being granted is the MID request and the NMI interrupt is requested simultaneously (in which case the NMI request will be granted before the first instruction indicated by the MID trap vector is executed.) 
15 
2.3.2.1 
This sequence has several important characteristics. First of all, for those interrupts that are maskable with the interrupt mask in the status register, the mask will get changed to a value that will permit only interrupts of higher priority to interrupt their service routines. Secondly, status bit ST10 (overflow interrupt enable) is reset to zero by the servicing of any interrupt so that overflow interrupt requests cannot be generated by an unrelated program segment. Thirdly, the disabling of other interrupts until after the first instruction of the service routine is executed permits the routine to disable other interrupts by changing the interrupt mask with the first instruction. (The ex- ception with MID and NMI is explained in Section 2.3.2.2.1.) Lastly, the vectoring and prioritizing scheme of the TMS 9995 permits interrupts to be automatically nested in most cases. If a higher priority interrupt occurs while in an interrupt service routine, a second context switch occurs to service the higher priority interrupt. When that routine is complete, a return instruction (RTWP) restores the saved context to complete processing of the lower priority interrupt. Interrupt routines should, therefore, terminate with the return instruction to restore original program parameters. 
Additional details of the TMS 9995 interrupts are supplied in the following paragraphs. 
External Interrupt Requests 
Each of these interrupts is requested when the designated signal is supplied to the TMS 9995. 
2.3.2.1.1 Interrupt Level 0 (RESET) 
Interrupt Level O is dedicated to the RESET input of the TMS 9995. When active (low), RESET causes the TMS 9995 to stop instruction execution and to inhibit (take to logic level high) MEMEN, DBIN, and WE/CRUCLK. The TMS 9995 will remain in this Reset state as long as RESET is active. 
When RESET is released (low-to-high transition), the TMS 9995 performs a context switch with the Level O inter- rupt trap vector (WP and PC of trap vector are in memory word addresses 000016 and 000216, respectively.) Note that the old WP, PC and ST are stored in registers 13, 14, and 15 of the new workspace. The TMS 9995 then resets all status register bits, the internal interrupt request latches (see Sections 2.3.2.1.3 and 2.3.2.2.3 for details of these latches), Flag Register bits FLAGO and FLAG1 (see Section 2.3.3.2.1 for details of the Flag Register), and the MID Flag (see Section 2.3.3.2.2). After this, the TMS 9995 starts execution with the new PC. 
If HOLDA is active (high) due to HOLD being active (low) when RESET becomes active, RESET will cause HOLDA to be released (taken low) at the same time as MEMEN, DBIN, and WE/CRUCLK are taken inactive (high). HOLD can remain active as long as RESET is active and HOLDA will not be asserted. If HOLD is active when RESET is released (low-to-high transition), HOLDA will be asserted before the RESET context switch occurs and the TMS 9995 will remain in this hold state until HOLD is released. This RESET and HOLD priority scheme facilitates DMA loading of external RAM upon power-up. 
Timing relationships of the RESET signal are shown in Figure 15. 
Release of the RESET signal is also the time at which the Automatic First Wait State function of the TMS 9995 can be invoked (see Section 2.3.1.3). 
16 
CLKOUT 
MEMEN 
DBIN 
WE/CRUCLK 
RESET 
NOTES: 
ANY NUMBER OF 
CLKOUT CYCLES 
I 
(2) 
(4) 
START CONTEXT SWITCH (FETCH 
WP OF RESET VECTOR) 
Don't care XXX indicates that any type of TMS9995 cycle can be taking place 2 RESET is sampled at every high-to-low CLKOUT transition 
(3) RESET is required to be active (low) for a minimum of four samples to initiate the sequence. The context switch would 
begin one CLKOUT cycle after 3 if RESET were inactive (high) at 3 
4 The context switch using the Reset trap vector begins one CLKOUT cycle after RESET is sampled as having returned to 
the inactive (high) level. 
FIGURE 15 TMS9995 RESET SIGNAL TIMING RELATIONSHIPS 
2.3.2.1.2 Non-Maskable Interrupt (NMI) 
The NMI signal is the request input for the NMI level interrupt and allows ROM loaders, single-step/breakpoint/ maintenance panel functions, or other user-defined functions to be implemented for the TMS 9995. This signal and its associated interrupt level are named "LOAD" in previous 9900 family products. 
NMI being active (low) according to the timing illustrated in Figure 16 constitutes a request for the NMI level interrupt. The TMS 9995 services this request exactly according to the basic sequence previously described, with the priority level, trap vector location, and enabling/resulting status register interrupt mask values as defined in Table 2. Note that the TMS 9995 will always grant a request for the NMI level interrupt immediately after execu- tion of the currently executing instruction is completed since NMI is exempt from the interrupt-disabling-after- execution characteristic of certain instructions and also the current value of the interrupt mask, 
It should also be noted that the TMS 9995 implements four bytes of its internal RAM at the memory address of the NMI vector. This allows usage of the NMI level in minimum-chip TMS 9995 systems. It also requires, however, that this vector must be initialized, upon power-up, before the NMI level interrupt can be requested. 
17 
CLKOUT 
(1) 
NMI 
NOTES: 
INTERNAL 
CYCLE (WOULD HAVE BEEN AN IAQ IF NMI HAD NOT OCCURRED) 
10 
ANY NUMBER OF 
CLKOUT CYCLES 
INTERNAL CYCLE 
CONTEXT SWITCH AND NMI SUBROUTINE 
NMI is sampled at every high-to-low CLKOUT transition 
To be recognized, NMI must be active (low) at the end of an instruction. Since instructions are variable in length, the minimum active time for NMI is variable according to the instruction being executed. Shown by is the last possible time that NMI must be recognized at or by before execution of the next instruction will commence. The NMI context switch begins three CLKOUT cycles after execution of the current instruction is complete. 
After an NMI context switch sequence has been initiated, NMI can remain active (low) indefinitely without causing consecutive NMI trap requests. To enable another NMI trap request, NMI must be taken inactive (high) and be sampled at least once at the inactive level. 
FIGURE 16 
TMS9995 NMI SIGNAL TIMING RELATIONSHIPS 
2.3.2.1.3 Interrupt Levels 1 and 4 (INT1 and INT4/EC) 
The INT1 and INT4/EC signals are the request inputs for the Level 1 and Level 4 interrupts, respectively. (Note that if the decrementer is configured as an event counter, INT4/EC is no longer a Level 4 interrupt request input, however. See Section 2.3.1.2.2). Levels 1 and 4 are maskable, user-definable interrupts. 
The INT1 and INT4/EC interrupt inputs can accept either asynchronous pluses or asynchronous levels as input signals. An internal interrupt request latch stores the occurrence of a pulse. A block diagram of the TMS 9995 internal logic for these request latches that is representative of their functional operation (but not necessarily representative of their specific logic implementation) is shown in Figure 17. Note that with this implementation only a single interrupt source is allowed if the input signal is a pulse, but multiple interrupt sources can be wired-ORed together provided that each source supplies a level as the input signal. (The levels are then removed one at a time by a hardware/software mechanism activated by the interrupt subroutine as each interrupting source is serviced by the subroutine.) 
PULSE GENERATED 
DURING RESET INTERRUPT SEQUENCE 
PULSE GENERATED WHEN CONTEXT SWITCH FOR ASSOCIATED INTERRUPT IS TAKEN 
INT 1, INT4/EC 
NOTES: 
SYNCHRONIZER 
OUTPUT 
CLEAR 
INPUT 
RISING-EDGE TRIGGERED 
LATCH 
OUTPUT 
INPUT 
LEVEL 1 or LEVEL 4 INTERRUPT REQUEST 
CRU INPUT DATA FOR CRU ADDRESS OF FLAG2 or FLAG4 IN FLAG REGISTER 
A separate latch and synchronizer is implemented for Level 1 (INT1) and Level 4 (INT4/EC). For Level 1, the input shown here is directly from the INT1 pin. For Level 4 the input shown here is from the gating shown in Figure 12. 
FIGURE 17 
FUNCTIONAL BLOCK DIAGRAM OF INTERNAL INTERRUPT REQUEST LATCH 
18 
2.3.2.2 
The TMS 9995 services each of these requests exactly according to the basic sequence previously described with the priority levels, trap vector locations, and enabling/resulting status register interrupt mask values as defined in Table 2 Each internal interrupt request latch will get reset when the context switch for its associated interrupt level occurs. 
Internally Generated Interrupts 
Each of these interrupts is requested when the designated condition has occurred in the TMS 9995. 
2.3.2.2.1 Macro Instruction Detection (MID) Interrupt 
The acquisition and attempted execution of an MID interrupt opcode will cause the MID level interrupt to be re- quested before execution of the next instruction begins (MID interrupt opcodes are defined in Section 4.5.15). In addition to requesting the MID level interrupt, the MID flag is set to one "1" (see Section 2.3.3.2.2). The TMS 9995 services this request exactly according to the basic sequence previously described, with the priority level, trap vector location, and enabling/resulting status register interrupt mask values as defined in Table 2. Note that the TMS 9995 will always grant a request for the MID level interrupt since MID is not affected by the interrupt mask and is higher in priority than any other interrupt except for Level 0, Reset, If the NMI interrupt is requested during an MID interrupt context switch, the MID interrupt context switch will be immediately followed by the NMI interrupt service sequence before the first instruction indicated by the MID interrupt is executed. This is done so that the NMI interrupt can be used for a single-step function with MID opcodes. Servicing the MID interrupt re- quest is viewed as "execution" of an MID interrupt opcode, NMI allows the TMS 9995 to be halted immediately after encountering an MID opcode. 
It should also be noted that the MID interrupt shares its trap vector with Level 2, the Arithmetic Overflow inter- rupt. (See Section 2.3.2.2.2.) The interrupt subroutine beginning with the PC of this vector should examine the MID Flag to determine the cause of the interrupt. If the MID Flag is set to "1", an MID interrupt has occurred, and if the MID Flag is set to "0", an Arithmetic Overflow interrupt has occurred. The portion of this interrupt sub- routine that handles MID interrupts should always, before returning from the subroutine, reset the MID Flag to "0". 
The MID interrupt has basically two applications. The MID opcodes can be considered to be illegal opcodes. The MID interrupt is then used to detect errors of this nature. The second, and primary application of the MID inter- rupt, is to allow the definition of additional instructions for the TMS 9995. MID opcodes are used as the opcodes for these macro instructions. Software in the MID interrupt service routine emulates the execution of these instruc- tions. The benefit of this implementation of macros is that the macro instructions can be implemented in micro- code in future processors and software will then be directly transportable to these future processors. 
Note that the TMS 9995 interrupt request processing sequence does create some difficulties for re-entrant usage of MID interrupt macro instructions. In general, to avoid possible errors, MID interrupt macro instructions should not be used in the NMI and Level 1 interrupt subroutines, and should only be used in the Reset subroutine if Reset is a complete initialization of the system. 
2.3.2.2.2 Arithmetic Overflow Interrupt 
As the arithmetic overflow as described in this sub-section is not functional on current devices, the arithmetic over- flow interrupt ST10 should not be enabled. This will be corrected at a later date. 
The occurrence of an arithmetic overflow condition, defined as status register bit 4 (ST4) getting set to one (see Table 7. for those conditions that set ST4 to one), can cause the Level 2 interrupt to be requested. Note that this request will be granted immediately after the instruction that caused the overflow condition. The TMS 9995 ser- vices this request exactly according to the basic sequence previously described with the priority level, trap vector location, and enabling/resulting status register interrupt mask values as defined in Table 2. 
In addition to being maskable with the interrupt mask, the Level 2 overflow interrupt request is enabled/disabled by status register bit 10 (ST10), the Arithmetic Overflow Enable Bit (i.e., ST10 = 1 enables overflow interrupt re- quest; ST10 = 0 disables overflow interrupt request). If servicing the overflow interrupt request is temporarily overridden by servicing of a higher priority interrupt, the occurrence of the overflow condition will be retained in the contents of the status register, i.e., ST4 = 1, which is saved by the higher priority context switch. Returning from the higher priority interrupt subroutine via an RTWP instruction causes the overflow condition to be re- loaded into status register bit ST4 and the overflow interrupt to be requested again (upon completion of RTWP instruction). The arithmetic overflow interrupt subroutine must reset ST4 or ST10 to zero in the status word saved in register 15 before the routine is complete to prevent generating another overflow interrupt immediately after the return. 
19 
It should also be noted that the Level 2 arithmetic overflow interrupt shares its trap vector with the MID inter- rupt. Section 2.3.2.2.1 describes how the interrupt subroutine beginning with the PC of this vector can determine the cause of the interrupt. 
2.3.2.2.3 Decrementer Interrupt 
2.3.3 
The occurrence of an interrupt request by the decrementer (see Section 2.3.1.2.2) will cause the Level 3 internal interrupt request latch to get set. This latch is similar to those for Levels 1 and 4 in that it is reset by servicing a Reset interrupt or when the context switch for its associated interrupt level occurs (Figure 17). 
The Level 3 internal interrupt request latch being set constitutes a request for a Level 3 interrupt, and the TMS 9995 services this request exactly according to the basic sequence previously described with the priority level, trap vector location, and enabling/resulting status register interrupt mask values as defined in Table 2. 
Communication Register Unit Interface 
The TMS 9995 accomplishes bit I/O of varying field width through the use of the Communications Register Unit (CRU), In applications demanding a bit-oriented I/O interface, the CRU performs its most valuable act: transferring a specified number of bits to or from memory and a designated device. Thus, the CRU is simply a linking mechanism between memory and peripherals. 
Acting as a shift register, the CRU is a separate hardware structure of the TMS 9995 microprocessor. This structure can serially transfer up to 16 bits of data between the CPU and a specified device in a single operation. The 32768-bit CRU address space may be divided into any combination of devices, each containing any number of input or output bits. When given the bit address of a device, the CRU can test or modify any bit in that unit. Several consecutive addresses can be occupied by a device. These CRU applications are controlled by single and multiple-bit 9995 instructions. 
Single-bit instructions facilitate the testing or modification of a particular bit in a device. The device in which a bit is to be tested (TB), set to zero (SBZ), or set to one (SBO) is designated by the sum of the value in Register 12 and an 8-bit signed displacement value included as an operand of that instruction. Details of these instructions are given in Section 4.5.7. 
Multiple-bit instructions control the serial transfer of up to 16 bits between memory and peripherals. The device with which communication is to take place is addressed by Register 12. The memory address to or from which data is to be transferred, as well as the number of bits to be transferred are included as operands of the multiple- bit instruction. Details of these instructions are given in Section 4,5,6. 
The signals used in the TMS 9995 interface to the CRU are shown in Figure 18. The CRU address map is shown in Figure 19. 
A0-A14 
00-D7" 
MEMEN 
DBIN 
CRU 
DEVICES 
TMS9995 
WE/CRUCLK 
CRUIN 
A15/CRUOUT 
READY 
NOTE: 
DO-D2 are used to distinguish between CRU and external instruction cycles. If external instructions are not used in a system, D0-02 are not necessary in the CRU interface. 
FIGURE 18 - TMS9995 CRU INTERFACE 
20 
0000 
GENERAL USE 
CRU ADDRESS SPACE 
EXTERNAL (OFF- 
CHIP) CRU 
ADDRESS SPACE 
1EDE 
1EEQ 
FLAGO 
FLAG1 
1EE2 
FLAG2 
1EE4 
FLAG3 
1EE6 
FLAG4 
1EE8 
FLAGS 
1EEA 
FLAG6 
1EEC 
1EEE 
FLAG7 
FLAG REGISTER 
FLAG8 
1EFO 
FLAG9 
1EF2 
FLAGA 
1EF4 
1EF6 
FLAGB 
1EF8 
FLAGC 
1EFA 
FLAGD 
FLAGE 
1EFC 
FLAGE 
1EFE 
1F00 
INTERNAL (ON- 
CHIP) CRU 
ADDRESS SPACE 
GENERAL USE CRU ADDRESS 
SPACE 
GENERAL USE CRU ADDRESS 
SPACE 
EXTERNAL (OFF- 
CHIP) CRU 
ADDRESS SPACE 
INTERNAL (ON- CHIP) CRU 
ADDRESS SPACE 
EXTERNAL (OFF- 
CHIP) CRU ADDRESS SPACE 
1FD8 
1FDA 
MID FLAG 
1FDC 
FFFE 
NOTE: 
These hex addresses are the software base addresses and are obtained by placing the 15-bit Address Bus CRU bit address in a 16-bit field, left-justifying the 15 bits in the field, and setting the LSB of the field to zero. 
FIGURE 19 CRU ADDRESS MAP 
The concept of "CRU space" is the key to CRU operations. An ideological area exists in which peripheral devices reside in the form of an address. The CRU space is this ideological area; it has monotonically increasing bit addresses. Each bit represents a bistable I/O point which can be read from or written to. CRU address space and memory address space are independent of each other. Memory space is byte-addressable, and CRU space is bit- addressable. Therefore, a desired device is accessed by placing its software base address in Register 12 and exercis- ing the CRU commands. 
CRU nomenclature is built around the four address types involved in its operation. The software base address, hardware base address, address displacement, and CRU bit address interact to link memory to peripherals in bit-serial communication via the CRU. 
The software base address consists of the entire 16 bits of R12. In R12, the programmer loads twice the value of the CRU hardware address of the device with which he wishes to communicate. Because only bits 0 through 14 of Register 12 are placed on the address bus, the programmer needs to shift the hardware base address left one position (equivalent to multiplying by two). 
Bits 0 through 14 of Register 12 form the hardware base address. For the single-bit instructions, the hardware base address is added to the address displacement to obtain the CRU bit address. For multiple-bit instructions the hardware base address is the CRU bit address. 
21 
2.3.3.1 
External CRU Devices 
To input a data bit from an external (off-chip) CRU device, the TMS 9995 first outputs the appropriate address on A0-A14. The TMS 9995 leaves MEMEN high, outputs logic zeroes on DO-D2, strobes DBIN, and reads in the data bit on CRUIN. Completion of each CRU input cycle and/or generation of Wait states is determined by the READY input as detailed in Section 2.3.1.3. Timing relationships of the CRU input cycle are shown in Figure 20. 
CLKOUT 
A0-A14 
DO-D7 
MEMEN 
DBIN 
WE/CRUCLK 
A15/CRUOUT 
(3) 
CRUIN 
NOTES: 
Хо 
I 
لا 
ᄃ 
CRU INPUT, SINGLE BIT, 
BIT ADDR. n 
BIT ADDR, n+1 
DATA BIT A 
DATA BIT n+1 
CRU INPUT, SINGLE BIT, 
NO WAITS 
ONE WAIT STATE 
CRU INPUT, SUCCESSIVE BITS, 
Valid Address 
2 DO-D7 each output logic zero 
Non-specific output bit 
NO WAITS 
CRU input bit must be valid on CRUIN at CLKOUT edge indicated 
FIGURE 20 
— 
TMS9995 CRU INPUT CYCLE 
1 
To output a data bit to an external (off-chip) CRU device, the TMS 9995 first outputs the appropriate address on AQ-A14. The TMS 9995 leaves MEMEN high, outputs logic zeroes on DO-D2, outputs the data bit on A15/ CRUOUT, and strobes WE/CRUCLK. Completion of each CRU output cycle and/or generation of Wait states is determined by the READY input as detailed in Section 2.3.1.3. Timing relationships of the CRU output cycle are shown in Figure 21. 
For multiple-bit transfers, these input and output cycles are repeated until transfer of the entire field of data bits specified by the CRU instruction being executed has been accomplished. 
22 
CLKOUT 
A0-A14 
DO-D7 
X 
X =X® 
MEMEN 
DBIN 
WE/CRUCLK 
1 
A15/CRUOUT 
3 
CRUIN 
خة 
CRU OUTPUT, SINGLE BIT, 
BIT ADDR, n DATA BIT n 
NO WAITS 
1 
BIT ADDR, n+1 
DATA BIT n+1 
NOTES: 
Valid Address 
(2) 
DO-D7 each output logic zero 
(3) 
Valid CRU output bit for address being output 
Don't care 
CRU OUTPUT, SUCCESSIVE BITS, 
NO WAITS 
х хо 
I 
FIGURE 21 
- 
TMS9995 CRU OUTPUT CYCLE 
CRU OUTPUT SINGLE BIT, ONE WAIT STATE 
2.3.3.1.1 Single-Bit CRU Operations 
The TMS 9995 performs three single-bit CRU functions: Test Bit (TB), Set Bit to One (SBO), and Set Bit to Zero (SBZ). The SBO instruction performs a CRU output cycle with logic one for the data bit, and the SBZ instruction performs a CRU output cycle with logic zero for the data bit. A TB instruction transfers the addressed CRU bit from the CRUIN input line to bit 2 of the status register (bit ST2, the EQUAL bit). 
The TMS 9995 develops a CRU bit address for the single-bit operations from the CRU base address contained in workspace register 12 and the signed displacement count contained in bits 8 through 15 of the instruction. The dis- placement allows two's complement addressing from base minus 128 bits through base plus 127 bits. The base address from WR12 is added to the signed displacement specified in the instruction and the result is placed onto the address bus. Figure 22 illustrates the development of a single-bit CRU address. 
23 
MSB 0 1 2 3 4 5 6 7 8 9 
100 
10 
11 
+ 
8 9 10 11 12 
BIT 8 SIGN EXTENDED 
على 
0 1 2 3 4 5 6 7 8 9 10 11 
Bit 15 of WR12 not used 
EFFECTIVE CRU BIT ADDRESS 
— 
FIGURE 22 SINGLE BIT CRU ADDRESS DEVELOPMENT 
122 
12 
13 
14 15 LSB 
X 
WR12* 
13 14 
15 
SIGNED 
DISPLACEMENT 
12 
13 
14 
ADDRESS BUS 
2.3.3.1.2 Multiple Bit CRU Operations 
The TMS 9995 performs two multiple-bit CRU operations: store communications register (STCR) and load com- munications register (LDCR). Both operations perform a data transfer from the CRU-to-memory or from memory- to-CRU as illustrated in Figure 23. Although the figure illustrates a full 16-bit transfer operation, any number of bits from 1 through 16 may be involved. 
CRU INPUT BITS 
N 
N+1 
N+14 
N+15 
INPUT (STCR) 
0 
MEMORY WORD 
14 
15 
OUTPUT (LDCR) 
N 
BIT SPECIFIED BY CRU BASE REGISTER (WR12) 
FIGURE 23 - LDCR/STCR DATA TRANSFERS 
24 
CRU OUTPUT BITS 
N 
N+1 
N+14 
N+15 
2.3.3.2 
The LDCR instruction fetches a word from memory and right shifts it to serially transfer it to CRU output bits. If the LDCR involves eight or fewer bits, those bits come from the right-justified field within the addressed byte of the memory word. If the LDCR involves nine or more bits, those bits come from the right-justified field within the whole memory word. Register 12, bits 0 through 14, defines the starting bit address. When transferred to the CRU interface, each successive bit receives an address that is sequentially greater than the address for the previous bit. This addressing mechanism results in an order reversal of the bits; that is, bit 15 of the memory word (or bit 7) becomes the lowest addressed bit in the CRU and bit 0 becomes the highest bit in the CRU field. 
A STCR instruction transfers data from the CRU to memory. If the operation involves a byte or less transfer, the transferred data will be stored right-justified in the memory byte with leading bits set to zero. If the operation in- volves from nine to 16 bits, the transferred data is stored right-justified in the memory word with leading bits set to zero. When the input from the CRU device is complete, the lowest addressed bit from the CRU is in the least- significant bit position in the memory word or byte. 
Internal CRU Devices 
Access of internal (on-chip) CRU devices is transparent to the TMS 9995 CRU instructions. Data can be input from and output to the bits of the internal CRU devices simply by using the appropriate CRU addresses to access these bits. 
The TMS 9995 will indicate to the external world when these internal CRU bit accesses are occurring by asserting the same signals used for accessing external CRU devices (see Figure 18). The timing of these signals for internal CRU input and output cycles will be identical to the timing for external CRU input and output cycles (see Figure 20 and 21) except that during internal CRU cycles, the READY input is ignored, i.e., Wait states cannot be generated, and, during internal CRU input cycles, the TMS 9995 will ignore the CRUIN input signal. The internal bit being input will not be available to the external world on CRUIN. 
The functional characteristics of the internal CRU devices are described in the following paragraphs. 
2.3.3.2.1 Flag Register 
Accessible via CRU input and output instructions that are executed to dedicated internal CRU bit addresses (see Figure 19) is the internal Flag Register. The 16-bit Flag Register contains both predefined TMS 9995 systems flags and user-definable flags as detailed in Table 3. The predefined system flags are the configuration bit for the Decrementer, the Decrementer enable bit, and the internal interrupt request latch CRU inputs. Note that CRU out- put operations to the internal interrupt request latch Flag addresses will not cause these latches to be either set or reset. These Flag bits are input only and allow the presence of these interrupt requests to be detected when the occurrence of the interrupts themselves is inhibited by the value of the interrupt mask in the status register. 
2.3.3.2.2 MID Flag 
2.3.4 
Accessible via CRU input and output instructions that are executed to a dedicated internal CRU bit address (see Figure 19) is the MID Flag. The MID Flag is set to one by a MID interrupt, and reset to zero by the software of the MID interrupt routine (see Section 2.3.2.2.1). Note that setting the MID Flag to one with a CRU instruction will not cause the MID interrupt to be requested. 
External Instructions 
The TMS 9995 has five external instructions (see Table 4) that allow user-defined external functions to be initiated under program control. These instructions are CKON, CKOF, RSET, IDLE, and LREX. These mnemonics, except for IDLE, relate to functions implemented in the 990 minicomputer and do not restrict use of the instructions to initiate various user-defined functions. Execution of an IDLE instruction causes the TMS 9995 to enter the Idle state and remain in this state until a request occurs for an interrupt level that is not masked by the current value of the interrupt mask in the status register. (Note that the Reset and NMI interrupt levels are not masked by any interrupt mask value.) When any of these five instructions are executed by the TMS 9995, the TMS 9995 will use the CRU interface (see Figure 18) to perform a cycle that is identical to a single-bit CRU output cycle (see Figure 21) except for the following: (1) the address being output will be non-specific, (2) the data bit being output will be non-specific, (3) a code, specified in Table 4, will be output on DO-D2 to indicate the external instruction being executed, (4) during CRU and external instruction cycles, D3-D7 are all zeroes. Note that completion of each external instruction and/or generation of Wait states is determined by the READY input as detailed in Section 2.3.1.3. 
25 
TABLE 3 FLAG REGISTER BIT DEFINITIONS 
BIT 
CRU BIT ADDRESS* 
FLAGO 
1EE0 
Set to 0: 
DESCRIPTION 
Decrementer configured as 
Interval Timer. 
Set to 1: 
Decrementer configured as Event Counter. 
FLAG1 
1EE2 
Set to 0: 
Set to 1: 
Decrementer not enabled 
Decrementer enabled (will 
decrement and can set in- 
ternal latch that requests a level 3 interrupt). 
FLAG2 
1EE4 
Level 1 Internal Interrupt Request 
Latch CRU Input (Input-only). 
0: 
Level 1 request not present 
1: 
Level 1 request present 
FLAG3 
1EE6 
Level 3 Internal Interrupt Request 
Latch CRU Input (Input-only). 
0: 
Level 3 request not present 
1: 
Level 3 request present 
FLAG4 
1EE8 
Level 4 Internal Interrupt Request 
Latch CRU Input (input-only). 
0: 
Level 4 request not present 
1: 
Level 4 request present 
FLAG5 
1 EEA 
FLAG6 
1EEC 
FLAG7 
1EEE 
FLAG8 
1EFO 
FLAG9 
1EF2 
FLAGA 
1EF4 
User Defined 
FLAGB 
1EF6 
FLAGC 
1EF8 
FLAGD 
1EFA 
FLAGE 
1EFC 
FLAGF 
1EFE 
† These hex numbers are those obtained by placing the 15-bit Address Bus CRU address in a 16-bit field, left justifying the 15 bits in the field, 
and setting the LSB of the field to zero, 
INSTRUCTION 
- 
TABLE 4 TMS 9995 EXTERNAL INSTRUCTION CODES 
DO 
CODE DURING CYCLE 
D1 
D2 
CRU: 
SBO, SBZ, TB, 
0 
0 
LDCR or STCR 
IDLE 
1 
0 
RSET 
0 
1 
1 
CKON 
1 
1 
CKOF 
1 
1 
LREX 
1 
1 
1 
26 
2.3.5 
When the TMS 9995 is in the Idle state, cycles with the Idle code will occur repeatedly until a request for an inter- rupt level that is not masked by the interrupt mask in the status register occurs. 
A Hold state can occur during an Idle state, with entry to and return from the Hold state occurring at the Idle code cycle boundaries. (See Section 2.3.1.1.3 for details of entry to and return from the Hold state.) 
TMS 9995 Internal ALU/Other Operation Cycles 
When the TMS 9995 is performing an operation internally and is not using the memory, CRU, or external instruc- tion interfacest or is not in the Hold state, the TMS 9995 will, for as many CLKOUT cycles as needed, do the following with its interface signals: 
(1) Output a non-specific address on A0-A14 and A15/CRUOUT 
(2) 
Output all ones on DO-D7 
(3) Output logic level high on MEMEN, DBIN, and WE/CRUCLK 
(4) 
Output logic level low on IAQ/HOLDA, and 
(5) 
Ignore the READY and CRUIN inputs. 
The HOLD input is still active, however, as the TMS 9995 can enter a Hold state while performing an internal ALU/other operation. Also, all interrupt inputs are still active. 
† Internal memory space and internal CRU device accesses are defined as using the memory and CRU interfaces, 
1. 
TMS 9995 PIN DESCRIPTION 
Table 5 defines the TMS 9995 pin assignments and describes the function of each pin. Figure 24 illustrates the TMS 9995 pin assignment information. 
XTAL1 
1 
40 
A15/CRUOUT 
XTAL2/CLKIN 
2 
39 
A14 
CLKOUT 
3 
38 
A13 
D7 
4 
37 
A12 
D6 
5 
36 
A11 
D5 
6 
35 A10 
D4 
7 
34 
A9 
D3 
8 
33 
A8 
D2 
9 
32 
A7 
Vcc 10 
31 
Vss 
D1 11 
30 
A6 
DO 12 
29 
A5 
CRUIN 
13 
28 
A4 
INT4/EC 
14 
27 
A3 
INT1 
15 
26 
A2 
IAQ/HOLDA 
16 
25 
A1 
DBIN 17 
24 
AQ 
HOLD 18 
23 
READY 
WE/CRUCLK 19 
22 
RESET 
MEMEN 20 
21 
NMI 
FIGURE 24 
- 
PIN ASSIGNMENTS 
27 
SIGNAL 
PIN 
VCC 
VSS 
10 
31 
TABLE 5 TMS 9995 PIN DESCRIPTION 
1/0 
XTAL2/CLKIN 
2 
IN 
DESCRIPTION 
POWER SUPPLIES 
Supply voltage (+5 V Nom) 
Ground reference 
CLOCKS 
Crystal input pin for internal oscillator. Also 
input pin for external oscillator. 
XTAL1 
1 
IN 
Crystal input pin for internal oscillator. 
CLKOUT 
OUT 
Clock output signal. The frequency of 
A2 
A3 
27220 
A0 
A1 
A4 
A5 
A6 
A7 
32 
A8 
33 
A9 
34 
A10 
35 
A11 
36 
A12 
37 
A13 
38 
A14 
39 
* 2 * 7 * 282☹**888 
24 
OUT 
25 
26 
OUT 
OUT 
27 
OUT 
28 
OUT 
29 
OUT 
30 
OUT 
OUT 
OUT 
OUT 
OUT 
OUT 
OUT 
OUT 
OUT 
A15/CRUOUT 
40 
OUT 
8 6 2 2 8886 
DO 
12 
11 
1/0 
1/0 
D2 
9 
1/0 
D3 
8 
1/0 
D4 
7 
1/0 
D5 
D6 
D7 
6 50 4 
6 
1/0 
1/0 
1/0 
CRUIN 
13 
IN 
CLKOUT is one fourth the oscillator input (external oscillator) or crystal (internal oscil- lator) frequency. 
ADDRESS BUS 
Address Bus. AO is the most significant bit of the 16 bit memory address bus and the 15 bit CRU address bus. A14 is the 2nd least signifi- 
cant bit of the 16 bit memory address bus and 
the LSB of the 15 bit CRU address bus. The address bus assumes the high impedance state when the TMS 9995 is in the Hold state. 
28 
28 
Address bit 15/CRU output data. A15/ CRUOUT is the LSB of the 16 bit memory address bus and the output data line for CRU output instructions. A15/CRUOUT assumes 
the high impedance state when the TMS 9995 is in the Hold state. 
DATA BUS 
Data Bus. During memory cycles (MEMEN active) DO (the MSB) through D7 (the LSB) 
are used to transfer data to/from the external 
memory system, During non-memory cycles (MEMEN inactive) D0, D1 and D2 are used to indicate whether the TMS 9995 is perform- ing a CRU cycle or an external instruction. The data bus assumes the high impedance state when the TMS 9995 is in the Hold state. 
CRU 
CRU input data. During CRU cycles, CRUIN is 
the input data line for CRU input data. 
TABLE 5 TMS 9995 PIN DESCRIPTION (Continued) 
SIGNAL 
PIN 
MEMEN 
1/0 
20 
OUT 
DBIN 
17 
OUT 
WE/CRUCLK 
19 
19 
OUT 
READY 
23 
IN 
DESCRIPTION 
CONTROL 
Memory enable. When active (low) MEMEN 
indicates that WE/CRUCLK, DBIN, and the 
address and data buses are being used for a memory cycle. When inactive (high) MEMEN 
indicates that WE/CRUCLK, DBIN and the 
address and data buses are being used for a 
CRU cycle, or are indicating that the 
TMS 9995 is performing an external instruc- 
tion. MEMEN does not assume the high im- 
pedance state when the TMS 9995 is in the 
Hold state. 
Data bus in. During memory read cycles, 
DBIN is active (low) to indicate that the 
TMS 9995 has disabled its data bus output buffers to allow external memory to enable 3-state drivers that output data onto the 
data bus. During CRU input cycles, DBIN is 
also active to indicate that the CRU cycle is an input cycle. DBIN assumes the high im. 
pedance state when the TMS 9995 is in the 
Hold state. 
D1 
= 
Write enable/inverted CRU clock. When active (low), WE/CRUCLK indicates that memory write data is available on the data bus (when 
MEMEN = 0); or that CRU data out is available 
on A15/CRUOUT (when MEMEN = 1 and 
DO = 
D2 0); or that an external inter- 
face should decode External instructions (when 
MEMEN 1 and DO, D1, and D2 are not all equal to 0). WE/CRUCLK assumes the high 
impedance state when the TMS 9995 is in 
the Hold state. 
= 
Ready. When active (high), READY indicates 
that the present external memory, CRU, or ex- ternal instruction cycle is ready to be completed. 
When not ready is indicated, a Wait state (defined 
as extension of the present cycle by one CLKOUT 
cycle) is entered. At the end of each Wait state 
READY is examined to determine if another 
Wait state is to be generated or if the cycle is to be completed. 
29 
TABLE 5 
- 
SIGNAL 
PIN 
HOLD 
TMS 9995 PIN DESCRIPTION (Continued) 
1/0 
18 
IN 
IAQ/HOLDA 
16 
OUT 
RESET 
22 
22 
IN 
NMI 
21 
IN 
INT1 
15 
IN 
DESCRIPTION 
CONTROL (Cont'd) 
Hold state request. When active (low), HOLD indicates to the TMS 9995 that an external 
controller desires to use the address and data buses. Upon sensing a Hold request, the TMS 9995 will enter a Hold state (defined as 
suspension of instruction execution) after it 
has completed its present cycle (see Section 2.3.1.1.3 for details of entry into a Hold state). At the beginning of the Hold state, the TMS 9995 places DBIN, WE/CRUCLK, and the address and data buses in the high imped- ance state, and then responds by asserting IAQ/HOLDA. When HOLD is removed, the TMS 9995 returns to normal operation. 
Instruction acquisition/hold acknowledge. If IAQ/HOLDA is active (high) when MEMEN 0, the TMS 9995 is indicating that the memory read cycle in progress is that of reading an 
instruction opcode. If IAQ/HOLDA is active 
when MEMEN = 1, the TMS 9995 is indicating that it is in the Hold state and that DBIN, WE/ CRUCLK, and the address and data buses are in the high impedance state. 
INTERRUPTS 
= 
Reset. When active (low) RESET causes the TMS 9995 to enter a RESET state (see Section 2.3.2.1.1) and inhibit MEMEN, DBIN, and WE/ CRUCLK. When RESET is released, the TMS 9995 initiates a level zero interrupt se- quence that acquires WP and PC from memory word addresses 0000 and 0002, and begins execution using this vector. RESET will ter- minate an Idle state. RESET is a Schmitt- 
trigger input. 
Non-maskable Interrupt. When active (low), NMI causes the TMS 9995 to execute a non- maskable interrupt sequence with the trap vector (WP and PC) in memory word ad- dresses FFFC and FFFE. NMI will terminate 
an Idle state. NMI is recognized only once for each high-to-low transition. (NMI must be taken inactive before it will be recognized again.) 
Interrupt one. When active (low), INT1 will cause the TMS 9995 to execute a level one interrupt trap if level one is not masked by the status register. 
30 
TABLE 5 
SIGNAL 
PIN 
- 
TMS 9995 PIN DESCRIPTION (Concluded) 
1/0 
DESCRIPTION 
INT4/EC 
14 
IN 
Interrupt four/event counter. When either the decrementer is not enabled or the decrementer is enabled and configured as an interval timer, INT4/EC being active (low) will cause the TMS 9995 to execute a level four interrupt 
trap if level four is not masked by the status 
register. When the decrementer is enabled and configured as an event counter, a high-to-low transition on INT4/EC will cause the count in 
the decrementer to be decremented by one. (See Section 2.3.1.2.2 for details of enabling and configuring the decrementer.) 
1. 
4.1 
4.2 
TMS 9995 INSTRUCTION SET 
DEFINITION 
Each TMS 9995 instruction performs one of the following operations: 
Arithmetic, logical, comparison, or manipulation operations on data 
Loading or storage of internal registers (program counter, workspace pointer, or status) 
Data transfer between memory and external devices via the CRU 
Control functions 
ADDRESSING MODES 
The TMS 9995 instructions contain a variety of available modes for addressing random memory data, e.g., pro- gram parameters and flags, or formatted memory data (character strings, data lists, etc.). These addressing modes 
are: 
Workspace Register Addressing 
Workspace Register Indirect Addressing 
Workspace Register Indirect Auto Increment Addressing 
Symbolic (Direct) Addressing 
Indexed Addressing 
Immediate Addressing 
Program Counter Relative Addressing 
CRU Relative Addressing 
31 
The following figures graphically describe the derivation of effective address for each addressing mode. The applica- bility of addressing modes to particular instructions is described in Section 4.5 along with the description of the operations performed by each instruction. The symbols following the names of the addressing modes (R, *R, *R+, @LABEL or @TABLE (R) are the general forms used by TMS 9995 assemblers to select the addressing modes for register R. 
4.2.1 
Workspace Register Addressing, R 
4.2.2 
4.2.3 
Workspace Register R contains the operand 
REGISTER R 
(PC)- 
INSTRUCTION 
(WP)+2R 
OPERAND 
The Workspace Register addressing mode is specified by setting the two-bit T-field (Ts or TD) of the instruction word equal to 00. 
Workspace Register Indirect Addressing, *R 
Workspace Register R contains the address of the operand. 
REGISTER R 
(PC) 
INSTRUCTION 
(WP)+2R 
ADDRESS 
OPERAND 
The Workspace Register Indirect addressing mode is specified by setting the two-bit T-field (Ts or TD) in the instruction word equal to 01. 
Workspace Register Indirect Auto Increment Addressing, *R+ 
Workspace Register R contains the address of the operand. After acquiring the address of the operand, the con- tents of Workspace Register R are incremented. 
REGISTER R 
(PC)- 
INSTRUCTION 
(WP)+2R 
ADDRESS 
OPERAND 
+ 
1 (BYTE) 
or 2 (WORD) 
The Workspace Register Indirect Auto Increment addressing mode is specified by setting the two-bit T-field (Ts or TD) in the instruction word equal to 11. 
32 
4.2.4 
Symbolic (Direct) Addressing, @LABEL 
The word following the instruction contains the address of the operand. 
(PC) 
INSTRUCTION 
(PC)+2- 
LABEL 
OPERAND 
The Symbolic addressing mode is specified by setting the two-bit T-field (TS or TD) in the instruction word equal to 10 and setting the corresponding S or D field equal to 0. 
4.2.5 
Indexed Addressing, @TABLE (R) 
(PC) 
(PC)+2- 
4.2.6 
The word following the instruction contains the base address. Workspace Register R contains the index value. The sum of the base address and the index value results in the effective address of the operand. 
INSTRUCTION 
TABLE 
REGISTER R 
(WP)+2R 
INDEX VALUE 
EFFECTIVE 
+ 
OPERAND 
ADDRESS 
The indexed addressing mode is specified by setting the two-bit T-field (Ts or TD) of the instruction word equal to 10 and setting the corresponding S or D field not equal to 0. The value in the S or D field is the register which con- tains the index value. 
Immediate Addressing 
The word following the instruction contains the operand. 
(PC) 
INSTRUCTION 
(PC) +2 
OPERAND 
4.2.7 
Program Counter Relative Addressing 
The eight-bit signed displacement in the right byte (bits 8 through 15) of the instruction is multiplied by 2 and added to the updated contents of the program counter. The result is placed in the PC. 
JUMP INSTRUCTION 
PROGRAM COUNTER 
OP CODE 
DISP 
2 ❤ DISP 
ADDRESS 
NEXT MEMORY WORD 
33 
+ 
4.2.8 
CRU Relative Addressing 
4.3 
4.4 
4.5 
4.5.1 
The eight-bit signed displacement in the right byte of the instruction is added to the CRU base address (bits 0 through 14 of workspace register 12). The result is the CRU address of the selected CRU bit. 
INSTRUCTION 
(PC) 
OP CODE 
DISP 
7 8 
15 
CRU BIT 
+ 
REGISTER 12 
ADDRESS 
(WP)+2-12- 
CRU BASE ADD 
14 15 
DEFINITION OF TERMINOLOGY 
The terminology used in describing the instructions of the TMS 9995 is defined in Table 6. 
STATUS REGISTER MANIPULATION 
Various TMS 9995 machine instructions affect the status register. Figure 5 shows the status register bit assignments. Table 7 lists the instructions and their effect on the status register. 
INSTRUCTIONS 
Dual Operand Instructions with Multiple Addressing for Source and Destination Operand 
General 
0 
1 
2 
3 
5 6 7 8 9 
10 
11 
12 
13 
14 
15 
156 
Format: 
OP CODE 
B 
TD 
D 
Ts 
$ 
If B 1, the operands are bytes and the operand addresses are byte addresses. If B = 0, the operands are words and the LSB of the operand address is ignored. 
The addressing mode for each operand is determined by the T-field of that operand. 
Ts or TD 
S or D 
ADDRESSING MODE 
NOTES 
00 
0, 1 
15 
Workspace register 
1 
01 
0,1 
15 
10 
0 
10 
11 
1,2... 15 
0,1 
Workspace register indirect 
Symbolic 
Indexed 
4 
2,4 
15 
Workspace register indirect 
3 
auto increment 
NOTES: 1. When a workspace register is the operand of a byte instruction (bit 3 = 1), the left byte (bits 0 through 7) is the 
operand and the right byte (bits 8 through 15) is unchanged. 
1. Workspace register O may not be used for indexing. 
2. The workspace register is incremented by 1 for byte instructions (bit 3 = 1) and is incremented by 2 for word instruc- 
tions (bit 3 = 0), 
1. When Ts TD = 10, two words are required in addition to the instruction word. The first word is the source operand 
base address and the second word is the destination operand base address. 
34 
TERM 
TABLE 6 
- 
DEFINITION OF TERMINOLOGY 
DEFINITIONS 
B 
C 
D 
DA 
Byte Indicator (1 = byte; 0 = word) 
Bit Count 
Destination address register 
Destination address 
IOP 
LSB (n) 
MSB (n) 
N 
PC 
Result 
S 
SA 
ST 
STn 
TD 
TS 
W 
WRn 
(n) 
a → b 
Inl 
Immediate operand 
Least-significant (right most) bit of (n) 
Most-significant (left most) bit of (n) 
Don't care 
Program Counter 
Result of operation performed by instruction 
Source address register 
Source address 
Status register 
Bit n of status register 
Destination address modifier 
Source address modifier 
Workspace register 
Workspace register n 
Contents of n 
a is transferred to b 
Absolute value of n 
+ 
AND 
OR 
+ 
ñ 
Arithmetic addition 
Arithmetic subtraction 
Logical AND 
Logical OR 
Logical exclusive OR 
Logical complement of n 
Arithmetic multiplication 
35 
BIT 
NAME 
TABLE 7 - STATUS REGISTER BIT DEFINITIONS+ 
INSTRUCTION 
AND/OR 
INTERRUPT 
STO 
Logical 
C, CB 
Greater 
Than 
CI 
ABS, LDCR 
RTWP 
LST 
CONDITION TO SET BIT TO 1, OTHERWISE 
SET TO 0 FOR INSTRUCTION LISTED. 
ALSO, THE EFFECT OF OTHER 
INSTRUCTIONS AND INTERRUPTS 
If MSB (SA) = 1 and MSB (DA) = 0, or 
If MSB (SA) = MSB (DA) and MSB of 
((DA) — (SA)] 
= 1. 
If MSB (W) 
if MSB (W) 
= 
and MSB of IOP = 0, or 
MSB of IOP and MSB of 
[IOP (W)] = 1. 
― 
If (SA) # 0 
If bit (0) of WR15 is 1 
If bit (0) of selected WR is 1 
A, AB, AI, ANDI, 
If result 
0 
DEC, DECT, LI, 
MOV, MOVB, NEG, 
ORI, S, SB, 
DIVS, MPYS, INC, 
INCT, INV, SLA, 
SOC, SOCB, SRA, 
SRC, SRL, STCR, 
SZC, SZCB, XOR Reset Interrupt 
All other instructions 
and interrupts 
C, CB 
Unconditionally sets status bit to 0 
Do not affect the status bit (see Note 1) 
+ 
ST1 
Arithmetic 
Greater 
Than 
C 
ABS, LDCR 
RTWP 
LST 
A, AB, AI, ANDI, 
DEC, DECT, LI, 
MOV, MOVB, NEG, 
ORI, S, SB, DIVS, 
MPYS, INC, INCT, 
INV, SLA, SOC, 
SOCB, SRA, SRC, 
SRL, STCR, SZC, 
SZCB, XOR 
Reset Interrupt 
All other instructions 
and interrupts 
See Table 6 for definitions of terminology used in this table. 
If MSB (SA) = 0 and MSB (DA) 1, or 
If MSB (SA) = MSB (DA) and MSB of 
[(DA) — (SA)} = 1. 
= 
1, or 
If MSB (W) = 0 and MSB of IOP 
if MSB (W) MSB of IOP and MSB of 
[IOP - (W)] 
= 
= 
1. 
If MSB (SA) 
= 
O and (SA) ÷ 0 
If bit (1) of WR15 is 1 
If bit (1) of selected WR is 1 
If MSB of result = O and result # 0 
Unconditionally sets status bit to 0 
Do not affect the status bit (see Note 1) 
36 
BIT 
NAME 
TABLE 7 STATUS REGISTER BIT DEFINITIONS (Continued) 
INSTRUCTION 
AND/OR 
INTERRUPT 
CONDITION TO SET BIT TO 1, 
OTHERWISE 
SET TO 0 FOR INSTRUCTION LISTED. 
ALSO, THE EFFECT OF OTHER 
INSTRUCTIONS AND INTERRUPTS 
ST2 
Equal 
C, CB 
CI 
COC 
CZC 
TB 
ST3 
Carry 
If (SA) = (DA) 
ABS, LDCR 
RTWP 
LST 
A, AB, AI, ANDI, 
DEC, DECT, LI, 
MOV, MOVB, NEG, 
ORI, S, SB, DIVS, MPYS, INC, INCT, 
INV, SLA, SOC, 
SOCB, SRA, SRC, SRL, STCR, SZC, 
SZCB, XOR 
Reset Interrupt 
All other instructions 
and interrupts 
A, AB, ABS, AI, 
DEC, DECT, INC, 
If (W) = IOP 
If (SA) and (DA) 
If (SA) and (DA) 
= 
- 
0 
0 
If CRUIN = 1 for addressed CRU bit 
If (SA) = 0 
If bit (2) of WR15 is 1 
If bit (2) of selected WR is 1 
If result = 0 
Unconditionally sets status bit to 0 
Do not affect the status bit (see Note 1) 
If CARRY OUT = 1 
INCT, NEG, S, SB 
SLA, SRA, SRL, 
SRC 
If last bit shifted out 
= 1 
RTWP 
LST 
Reset Interrupt 
All other instructions 
and interrupts 
If bit (3) of WR15 is 1 
If bit (3) of selected WR is 1 
Unconditionally sets status bit to 0 
Do not affect the status bit (see Note 1) 
ST4 
Overflow 
A, AB 
ΑΙ 
S, SB 
DEC, DECT 
INC, INCT 
SLA 
DIV 
DIVS 
ABS, NEG 
RTWP 
LST 
Reset Interrupt 
All other instructions 
and interrupts 
If MSB (SA) 
of result 
MSB (DA) and MSB 
MSB (DA) 
If MSB (W) = MSB of IOP and MSB 
of result 
MSB (W) 
If MSB (SA) MSB (DA) and MSB 
of result MSB (DA) 
If MSB (SA) = 1 and MSB of result = 0 
If MSB (SA) O and MSB of result 
If MSB changes during shift 
= 
If MSB (SA) = 0 and MSB (DA) = 1, or if MSB (SA) = MSB (DA) and MSB of 
[(DA) — (SA)] = 0 
If the quotient cannot be expressed as a 
signed 16 bit quantity (800016 is a valid negative number) 
If (SA) = 800016 
If bit (4) of WR15 is 1 
If bit (4) of selected WR is 1 
Unconditionally sets status bit to 0 
Do not affect the status bit (see Note 1) 
37 
TABLE 7 
BIT 
NAME 
ST5 
Odd 
Parity 
- 
· STATUS REGISTER BIT DEFINITIONS (Concluded) 
INSTRUCTION 
AND/OR 
INTERRUPT 
CB, MOVB 
LDCR 
STCR 
AB, SB, SOCB, 
SZCB 
RTWP 
LST 
Reset Interrupt 
All other instructions 
and Interrupts 
CONDITION TO SET BIT TO 1, OTHERWISE 
SET TO 0 FOR INSTRUCTION LISTED. 
ALSO, THE EFFECT OF OTHER 
INSTRUCTIONS AND INTERRUPTS 
If (SA) has odd number of 1's 
If 1 < C <8 and (SA) has odd number of 1's. 
If C 
= 
0 or 9 < C < 15, does not affect the 
status bit. 
If 1 < C <8 and the stored bits have an odd 
number of 1's. If C = 0 or 9 < C < 15, does 
not affect the status bit. 
If result has odd number of 1's. 
If bit (5) of WR15 is 1 
If bit (5) of selected WR is 1 
Unconditionally sets status bit to 0 
Do not affect the status bit (see Note 1) 
ST6 
XOP 
XOP 
RTWP 
LST 
Reset Interrupt 
All other instructions 
and interrupts 
If XOP instruction is executed 
If bit (6) of WR15 is 1 
If bit (6) of selected WR is 1 
Unconditionally sets status bit to 0 
Do not affect the status bit (see Note 1) 
ST7 
Unused 
ST8 
Bits 
$T9 
and 
ST11 
ST10 
Arithmetic 
Overflow 
Enable 
RTWP 
LST 
XOP, Any 
Interrupt 
All other instructions 
RTWP 
LST 
XOP, Any Interrupt 
All other instructions 
ST12 
ST13 
Interrupt 
Mask 
LIMI 
RTWP 
ST14 
LST 
and 
RST, Reset and 
ST15 
NMI Interrupts 
All other interrupts 
All other instructions 
If corresponding bit of WR15 is 1 
If corresponding bit of selected WR is 1. 
Unconditionally sets each of these status 
bits to 0 
Do not affect these status bits (see Note 1) 
If bit (10) of WR is 1 
If bit (10) of selected WR is 1 
Unconditionally sets status bit to 0 
Do not affect the status bit (see Note 1) 
If corresponding bit of IOP is 1 
If corresponding bit of WR15 is 1 
If corresponding bit of selected WR is 1. 
Unconditionally sets each of these status 
bits to O 
If ST12 
If ST12 
= 
ST15 0, no change 
ST150, set to one 
Less than level of the interrupt trap taken 
Do not affect these status bits (see Note 1) 
NOTE 1: The X instruction itself does not affect any status bit; the instruction executed by the X instruction sets status bits as defined for 
that instruction, 
38 
OP CODE B 
MNEMONIC 
0 1 
2 3 
A 
1 
0 
1 
0 
Add 
AB 
1 
0 
1 
1 
Add bytes 
C 
1 
0 
0 
0 
Compare 
RESULT 
STATUS 
MEANING 
COMPARED 
TO O 
BITS 
AFFECTED 
DESCRIPTION 
Yes 
0-4 
(SA) + (DA) → (DA) 
Yes 
0-5 
(SA) + (DA) → (DA) 
No 
0-2 
Compare (SA) to (DA) and set 
appropriate status bits 
CB 
1 
0 0 
1 
Compare bytes 
No 
0-2,5 
S 
0 
1 
0 
Subtract 
Yes 
0.4 
(DA) - (SA) 
Compare (SA) to (DA) and set 
appropriate status bits 
- 
(DA) 
SB 
0 
1 
1 
1 
Subtract bytes 
Yes 
0-5 
(DA) – (SA) → (DA) 
SOC 
1 
1 
0 
Set ones corresponding 
Yes 
0-2 
(DA) OR (SA) → (DA) 
SOCB 
1 
Set ones corresponding bytes 
Yes 
0-2,5 
SZC 
0 1 
0 
0 
Set zeroes corresponding 
Yes 
0-2 
SZCB 
0 
0 
1 
Set zéroes corresponding bytes 
Yes 
0-2,5 
(DA) OR (SA) → (DA) 
(DA) AND (SA) (DA) 
(DA) AND (SA) → (DA) 
w 
MOV 
1 1 0 
Move 
Yes 
0-2 
→ 
MOVB 
1 
1 
0 
1 
Move bytes 
Yes 
0-2,5 
(SA) 
(SA) → (DA) 
(DA) 
4.5.2 
Dual Operand Instructions with Multiple Addressing Modes for the Source Operand and Workspace Register Addressing for the Destination 
General 
0 
1 
2 
3 
4 5 
Format: 
OP CODE 
D 
6 7 8 9 10 11 
Ts 
12 
13 14 
15 
S 
The addressing mode for the source operand is determined by the Ts field. 
Ts 
ADDRESSING MODE 
NOTES 
00 
0, 1. 
15 
Workspace register 
01 
0,1 
15 
Workspace register indirect 
10 
0 
Symbolic 
10 
1,2 
15 
Indexed 
1 
11 
0,1 
15 
Workspace register indirect auto increment 
NOTES: 1. Workspace register O may not be used for indexing. 
1. The workspace register is incremented by 2. 
39 
OP CODE 
RESULT 
STATUS 
MNEMONIC 
MEANING 
COMPARED 
0 
1 2 3 4 5 
TO O 
BITS 
AFFECTED 
COC 
0 0 1 0 0 0 Compare ones 
No 
2 
corresponding 
CZC 
оо 1 
0 0 1 Compare zeroes 
No 
2 
corresponding 
XOR 
MPY 
0 0 1 
0 1 0 Exclusive OR 
0 0 1 1 1 0 Multiply 
Yes 
0-2 
No 
DIV 
0 0 1 1 1 1 Divide 
No 
4 
4.5.3 
Signed Multiply and Divide Instructions 
DESCRIPTION 
Test (D) to determine if 1's are in each bit 
position where 1's are in (SA). If so, set ST2. 
Test (D) to determine if O's are in each bit 
position where 1's are in (SA). If so, set ST2. (DA) → (SA) → (D) 
- 
Multiply unsigned (D) by unsigned (SA) and place unsigned 32-bit product in D (most- significant) and D+1 (least-significant). If WR15 
is D, the next word in memory after WR15 will 
be used for the least significant half of the 
product. 
If unsigned (SA) is less than or equal to unsigned (D), perform no operation and set ST4. Otherwise, divide unsigned (D) and (D+1) by unsigned (SA). Quotient (D), remainder (D+1), If D = 15, 
the next word in memory after WR15 will be 
used for the remainder. 
→ 
- 
General 
0 
1 2 
3 
4 
5 6 7 8 9 10 
11 
12 
13 
14 
15 
Format: 
OP CODE 
Ts 
$ 
The addressing mode for the source operand is determined by the Ts field. 
Ts 
$ 
ADDRESSING MODE 
NOTES 
00 
0,1 
15 
Workspace register 
1 
01 
0,1 
15 
Workspace register indirect 
1 
10 
0 
10 
11 
1,2... 0,1 
15 
Symbolic 
Indexed 
1 
1,2 
15 
Workspace register indirect 
1,3 
auto increment 
NOTES: 1. Workspace registers 0 and 1 contain operands used in the signed multiply and divide operations. 
1. Workspace register O may not be used for indexing. 3. The workspace register is incremented by 2. 
40 
OP CODE 
RESULT 
STATUS 
MNEMONIC 
MEANING 
COMPARED 
0 1 2 
3 
4 5 6 
7 8 9 
TO O 
BITS 
AFFECTED 
MPYS 
0 0 0 0 0 0 0 1 1 1 
Signed Multiply 
Yes 
0-2 
DIVS 
0 0 0 0 0 0 0 1 1 0 Signed 
Yes 
0-2,4 
Divide 
4.5.4 
Extended Operation (XOP) Instruction 
DESCRIPTION 
Multiply signed two's com- 
plement integer in WRO by 
signed two's complement 
integer (SA) and place signed 32-bit product in WRO (most- 
significant) and WR1 least- 
significant. 
If the quotient cannot be ex- 
pressed as a signed 16 bit 
quantity (8000 (hex) is a valid 
negative number), set ST4. 
Otherwise, divide signed, two's 
complement integer in WRO 
and WR1 by the signed two's 
complement integer (SA) and 
place the signed quotient in 
WRO and the signed remainder 
in WR1. The sign of the quo- tient is determined by algebraic 
rules. The sign of the remainder 
is the same as the sign of the 
dividend and REMAINDER | 
<I DIVISORI 
General 
0 
1 
3 
4 
5 6 7 8 9 10 11 
12 
13 
14 
15 
Format:: 
0 
0 
1 
0 
1 
1 
D 
Ts 
S 
The TS and S fields provide multiple mode addressing capability for the source operand. When the XOP is executed, the following transfers occur: 
(4016 + 4D) 
(4216 + 4D) 
(WP) 
(PC) 
SA- 
(new WR11) 
(old WP) 
(new WR13) 
(old PC) 
(old ST) 
(new WR14) 
(new WR15) 
After these transfers have been made, ST6 is set to one, and ST7, ST8, ST9, ST10 (Overflow Interrupt Enable), and ST11 are all set to zero. 
The TMS 9995 does not service interrupt trap requests (except for the Reset and NMI Requests) at the end of the XOP instruction. 
41 
4.5.5 
Single Operand Instructions 
General 
1 
2 3 4 5 6 7 8 9 
6 
10 11 
12 
13 
14 
15 
Format: 
OP CODE 
Ts 
S 
* 
The TS and S fields provide multiple mode addressing capability for the source operand. 
OP CODE 
MNEMONIC 
MEANING 
0 
1 
2 
3 
4 
5 
6 
7 
8 9 
RESULT 
COMPARED 
TO ZERO 
STATUS 
BITS 
AFFECTED 
DESCRIPTION 
B 
0 
Q 
0 0 
0 
1 
0 
0 
0 
1 
Branch 
No 
SA →→ 
(PC) 
BL 
0 0 0 0 0 1 1 
0 1 
0 
Branch 
No 
- 
(PC) → (WR11); SA → 
(PC) 
and link 
BLWP 
0 0 0 0 0 1 0 0 0 0 Branch 
No 
(SA) → (WP); (SA + 2)→ (PC); 
and load 
(old WP) → (new WR13); 
workspace 
pointer 
(old PC) → (new WR14); 
(old ST) → (new WR15); 
The TMS 9995 does not ser- 
vice interrupt trap requests (except for the Reset and NMI 
Requests) at the end of the 
BLWP instruction. 
CLR 
0 0 0 0 0 1 0 0 1 1 
Clear 
Operand 
No 
0 → (SA) 
SETO 
0 0 0 0 0 1 1 1 0 0 
Set to 
No 
FFFF 16 
- (SA) 
ones 
INV 
000 
0 0 
1 
0 
1 
0 
1 
Invert 
Yes 
0-2 
(SA) → (SA) 
NEG 
O 
0 0 
0 
0 
1 
0 
1 0 
0 
Negate 
Yes 
0-4 
~(SA) → (SA) 
ABS 
0 0 0 0 0 1 
1 
1 0 1 
Absolute 
value* 
No 
go 
0-4 
│(SA) (SA) 
→ 
SWPB 
0 0 0 0 0 1 1 0 1 1 Swap 
No 
bytes 
(SA), bits 0 thru 7 → 
bits 8 thru 15; (SA), 
bits 8 thru 15 → (SA), 
bits 0 thru 7. 
INC 
0 0 0 0 0 1 0 1 1 0 Increment 
Yes 
0-4 
(SA) + 1 → (SA) 
INCT 
0 0 0 0 0 1 0 1 1 
1 
Increment 
by two 
Yes 
0-4 
(SA) + 2 → (SA) 
DEC 
0 0 0 0 0 
1 
1 
0 0 0 
Decrement 
Yes 
0-4 
(SA) 
1 → 
(SA) 
DECT 
0 0 0 0 0 1 1 0 0 
1 
Decrement 
by two 
Yes 
0-4 
(SA) 2 (SA) 
→ 
X** 
0 0 0 0 0 1 0 0 1 0 
Execute 
No 
(SA) 
Operand is compared to zero for status bit. 
Execute the instruction 
at SA. 
If additional memory words for the execute instruction are required to define the operands of the instruction located at SA, these words will be accessed from PC and the PC will be updated accordingly. The instruction acquisition signal (AQ) will not be true when the TMS 9995 accesses the instruction at SA. Status bits are affected in the normal manner for the instruction executed, 
42 
4.5.6 
CRU Multiple-Bit Instruction 
General 
0 
1 
2 
3 4 5 6 7 8 9 10 11 12 
13 
14 
15 
Format: 
OP CODE 
Ts 
S 
The C field specifies the number of bits to be transferred. If C = 0, 16 bits will be transferred. The CRU base register (WR12, bits 0 through 14) defines the starting CRU bit address. The bits are transferred serially and the CRU address is incremented with each bit transfer, although the contents of WR12 are not affected. Ts and S pro- vide multiple mode addressing capability for the source operand. If eight or fewer bits are transferred (C 1 through 8), the source address is a byte address. If nine or more bits are transferred (C = 0, 9 through 15), the source address is a word address. If the source is addressed in the workspace register indirect auto increment mode, the workspace register is incremented by one if C 1 through 8, and is incremented by two otherwise. If the 
= 
source is addressed in the register mode, and if the transfer is eight bits or less, bits 8-15 are unchanged. 
OP CODE 
MNEMONIC 
MEANING 
1 
2 
3 
4 
5 
RESULT 
COMPARED 
TO O 
STATUS 
BITS 
AFFECTED 
DESCRIPTION 
LDCR 
0 
0 
1 
1 
0 0 
Load 
Yes 
0-2,5* 
Beginning with 
communication 
register 
STCR 
0 0 1 1 0 1 
Store 
Yes 
0-2,5* 
communication 
register 
*ST5 is affected only if 1 C≤ 8. 
4.5.7 
CRU Single-Bit Instructions 
LSB of (SA), 
transfer the 
specified number 
of bits from (SA) 
to the CRU. 
Beginning with LSB of (SA), 
transfer the 
specified number 
of bits from the 
CRU to (SA). 
Load unfilled bit 
positions with 0. 
General 
0 1 
2 3 4 5 6 7 8 9 
10 11 
12 13 
14 
15 
Format: 
OP CODE 
SIGNED DISPLACEMENT 
The signed displacement is added to the contents of WR12 (bits 0-14) to form the address of the CRU bit to be selected. 
43 
OP CODE 
STATUS 
MNEMONIC 
MEANING 
0 
1 
2 
3 
4 
10 
6 
7 
BITS 
AFFECTED 
SBO 
0 0 0 
1 
1 
1 
0 
1 
Set bit to 
one 
SBZ 
0 0 0 
1 1 
1 0 
Set bit to 
zero 
TB 
0 0 0 1 1 1 1 1 
Test bit 
2 
4.5.8 
Jump Instructions 
General 
Format: 
DESCRIPTION 
Set the selected 
output bit to 1, 
Set the selected 
output bit to 0. 
If the selected 
CRU input bit = 
1, set ST2; if the 
selected CRU in- 
put = 0, set ST2 
= 0. 
3 
4 5 6 7 8 9 10 
11 
12 
13 
14 
15 
OP CODE 
SIGNED DISPLACEMENT 
Jump instructions cause the PC to be loaded with the value selected by PC relative addressing if the bits of ST are at specified values. Otherwise, no operation occurs and the next instruction is executed since the PC points to the next instruction. The signed displacement field is a word count to be added to PC. Thus, the jump instruction has a range of -128 to 127 words from memory-word address following the jump instruction. 
No ST bits are affected by jump instructions. 
OP CODE 
MNEMONIC 
MEANING 
ST CONDITION TO LOAD PC 
0 
1 
2 
3 
4 
LO 
5 
6 
7 
JEQ 
0 
0 
0 
1 
0 
0 
1 
1 
Jump equal 
ST2 = 1 
JGT 
0 
0 0 
1 
0 
1 
0 
1 
Jump greater than 
ST1 
= 1 
JH 
0 
0 
0 
1 
1 
0 
1 
1 
Jump high 
STO 
= 
1 and ST2 
= 
0 
JHE 
0 
0 0 
1 
0 
1 
0 0 
Jump high or equal 
STO= 1 or ST2 = 1 
JL 
0 
0 0 
1 
1 
0 
1 
0 
Jump low 
STO = 0 and ST2 = 0 
JLE 
0 0 
1 
0 
0 
1 
0 
Jump low or equal 
STO= 0 or ST2 
1 
JLT 
0 
0 
Q 
1 
0 
0 0 1 
Jump less than 
ST1 = 0 and ST2 
= 0 
JMP 
0 0 
1 
0 
0 0 
Jump unconditional 
Unconditional 
JNC 
0 
0 
0 
1 
0 
1 
1 
1 
Jump no carry 
ST3 = 0 
JNE 
0 
0 
0 
1 
0 
1 
1 
0 
Jump not equal 
ST2 = 0 
JNO 
0 0 
0 1 
1 
0 0 
1 
Jump no overflow 
ST4 = 0 
JOC 
0 0 0 1 1 
0 0 0 
Jump on carry 
ST3 
= 
1 
JOP 
0 
0 0 1 
1 
1 0 0 
Jump odd parity 
ST5 = 1 
44 
4,5.9 
Shift Instructions 
General 
0 
1 2 
Format: 
3 4 5 6 7 8 9 
OP CODE 
10 11 
1=1 
12 
13 
14 15 
W 
If C 
= 
0, bits 12 through 15 of WRO contain the shift count. If C = 0 and bits 12 through 15 of WRO = 0, the shift count is 16. 
OP CODE 
MNEMONIC 
MEANING 
0 
1 
2 
3 
4 
5 6 
7 
RESULT 
COMPARED 
TO O 
STATUS 
BITS 
AFFECTED 
DESCRIPTION 
SLA 
0 0 0 
1 
0 
1 
0 
Shift left 
arithmetic 
Yes 
0-4 
Shift (W) left. 
Fill vacated 
bit positions 
with 0. 
SRA 
0 0 0 0 1 0 0 0 
Shift right 
arithmetic 
Yes 
0-3 
Shift (W) right. 
Fill vacated bit 
positions with 
original MSB 
of (W). 
SRC 
0 0 0 0 1 0 1 1 
Shift right 
Yes 
0-3 
Shift (W) right. 
circular 
Shift previous 
LSB into MSB. 
SRL 
0 0 0 0 1 0 0 1 
Shift right 
logical 
Yes 
0-3 
Shift (W) right. 
Fill vacated bit 
positions with 
0's. 
4.5.10 
Immediate Register Instructions 
0 
2 3 
4 5 6 7 8 
9 
10 
11 
12 
13 
14 
15 
General 
OP CODE 
O 
W 
Format: 
IOP 
OP CODE 
MNEMONIC 
MEANING 
0 1 
2 
3 4 
LO 
5 
6 
7 
10 
RESULT 
COMPARED 
TO O 
STATUS 
BITS 
AFFECTED 
DESCRIPTION 
ΑΙ 
0 
0 
0 0 
1 
0 
0 
0 
1 
Add immediate 
Yes 
0-4 
(W) + IOP (W) 
ANDI 
0 0 0 0 0 0 
1 
0 0 
1 
0 
AND immediate 
Yes 
0-2 
(W) AND IOP → (W) 
CI 
0 0 0 0 0 0 1 0 1 0 0 
Compare imme- 
Yes 
0-2 
Compare (W) to 
diate 
IOP and set appro- 
priate status bits. 
LI 
0 0 0 0 0 0 1 0 0 0 0 
Load immediate 
Yes 
0-2 
IOP → (W) 
ORI 
0 0 0 0 0 
0 1 
0 
0 1 
1 
OR immediate 
Yes 
0-2 
(W) OR TOP 
→ 
(W) 
45 
4.5.11 
Internal Register Load Immediate Instructions 
General 
Format: 
0 1 
2 3 
5 
6 7 
8 9 
10 
11 
12 
13 
14 
15 
OP CODE 
0 
0 
0 
0 
0 
IOP 
OP CODE 
MNEMONIC 
MEANING 
0 
1 
2 
3 
5 
6 7 
8 9 
10 
LWPI 
0 
0 0 0 0 0 1 0 1 
1 
1 
Load workspace 
LIMI 
0 0 0 0 0 0 1 1 0 0 0 
pointer immediate 
Load interrupt 
mask 
4.5.12 
Internal Register Load and Store Instructions 
DESCRIPTION 
IOP → (WP), no ST bits 
affected. 
IOP, bits 12 thru 15 
ST12 thru ST15, 
General 
0 1 
2 3 4 5 6 7 8 9 10 11 
12 
13 14 
15 
Format: 
OP CODE 
W 
OP CODE 
MNEMONIC 
MEANING 
0 1 
2 
3 
4 
5 
6 
7 
8 
9 
10 
11 
STATUS 
BITS 
AFFECTED 
DESCRIPTION 
STST 
0 
0 
0 0 0 
0 1 
0 1 
1 
0 0 
Store status 
Register 
(ST) → (W) 
LST 
0 0 0 0 0 0 0 0 1 0 0 0 
Load status 
Register 
0-15 
(W) → (ST) 
4.5.13 
STWP 
0 0 0 0 0 0 1 0 1 0 1 0 
Store work- 
space pointer 
(WP) → (W) 
LWP 
0 0 0 0 0 0 0 0 1 0 0 1 
Load work- 
space pointer 
(W) → (WP) 
Return Workspace Pointer (RTWP) Instruction 
General 
0 
1 
2 
3 
4 
5 
6 7 8 9 10 
11 
12 
13 
14 
15 
Format: 
0 
0 
0 
0 
0 
0 
1 
1 
1 
0 
0 
0 0 
0 0 0 
The RTWP instruction causes the following transfers to occur: 
(WR15) (ST) 
(WR14)(PC) 
(WR13) ►(WP) 
46 
4.5.14 External Instructions 
General 0 1 2 3 4 5 6 7 8 
10 
11 
12 
13 
14 
15 
Format: 
OP CODE 
0 
0 
0 
0 
0 
External instructions cause three data lines (DO through D2) to be set to the levels described below, and the WE/ CRUCLK line to be pulsed, allowing external control functions to be initiated, 
OP CODE 
MNEMONIC 
MEANING 
0 1 2 
3 
4 
5 
6 
7 8 9 10 
STATUS 
BITS 
AFFECTED 
DESCRIPTION 
DATA BUS 
DO D1 D2 
IDLE 
0000001 
1 0 1 0 
Idle 
Suspend TMS 9995 
instruction execution 
H L 
RSET 
0 0 0 0 0 0 1 1 0 1 1 
Reset 
CKOF 
0 0 0 0 0 0 
1 
1 
1 
1 
0 
User defined 
CKON 
0 0 0 
0 
0 
0 
1 
1 
1 
0 
1 
User defined 
LREX 
0 
0 0 
0 0 0 1 1 1 
1 
1 
User defined 
4.5.15 
MID Interrupt Opcodes 
until an unmasked 
interrupt level 
request occurs. 
12-15 
Set ST12-ST15 
H 
to zero. 
I 
H 
H 
L 
H 
L 
H 
H 
H 
H 
The instruction opcodes that will cause an MID interrupt request (see Section 2.3.2.2) are (hex numbers): 
0000-007F 
0301-033F 
00A0-017F 
0341-035F 
0210-021F 
0361-037F 
0230-023F 
0381-039F 
0250-025F 
03A1-03BF 
0270-027F 
03C1-03DF 
0290-029F 
03E1-03FF 
02B0-02BF 
0780-07FF 
02D0-02DF 
OC00-OFFF 
02E1-02FF 
4.6 
INSTRUCTION EXECUTION 
4.6.1 
Microinstruction Cycle 
Each TMS 9995 instruction is executed by a sequence of machine states (microinstructions) with the length of each sequence depending upon the specific instruction being executed. Each microinstruction is completed in one CLKOUT cycle unless Wait states are added to a memory or CRU cycle. (Also, each external memory space access of a word and each external CRU cycle requires at least two CLKOUT cycles but will be accomplished with a single microinstruction). 
47 
4.6.2 
Execution Sequence 
The TMS 9995 incorporates an instruction prefetch scheme which minimizes, and in some cases eliminates, the time required to fetch the instruction from memory. Without the prefetch, a typical instruction execution sequence is as follows: 
(1) Fetch instruction 
(2) Decode instruction 
(3) 
Fetch source operand, if needed 
(4) 
Fetch destination operand, if needed 
(5) 
Process the operands 
(6) 
Store the results, if required 
The TMS 9995 makes use of the fact that during Step 5 the memory interface is not required; therefore, the fetch of the next instruction can be accomplished in this time. This instruction is then decoded during the state(s) that is(are) required to store the results of the previous instruction, which creates even more execution overlap. Table 8 illustrates the case of maximum efficiency for an Add instruction (instruction opcodes and operands are located in the internal RAM). Note that it effectively takes only four machine states to perform all six steps. 
STEP 
STATE 
COUNT 
1 
2 
1 
3 
2 
4 
3 
5 
4 
6 
TABLE 8 
- 
EXECUTION SEQUENCE EXAMPLE 
MEMORY CYCLE 
Fetch Instruction 
Write Results 
Fetch Source 
Fetch Destination 
Fetch Next Instruction 
Write Results 
INTERNAL FUNCTION 
Process Previous Operands 
Decode instruction 
Add 
Decode Instruction 
It should be noted that the instruction prefetch scheme employed by the TMS 9995 can cause self-modifying software to execute incorrectly. Incorrect execution will result when an instruction is supposed to generate the opcode of the very next instruction to be executed. (The TMS 9995 will begin the fetch of the opcode of the next instruction before the currently executing instruction stores the results of its execution.) 
4.6.3 
TMS 9995 Instruction Execution Times 
Instruction execution times for the TMS 9995 are a function of: 
(1) 
Machine state time, tc2. 
(2) 
The location of the instruction opcode (internal or external memory). 
(3) 
The location of the workspace and the operand (s) (internal or external memory). 
(4) 
Addressing mode used where operands can be fetched via multiple addressing modes. 
(5) 
Number of Wait states introduced, as appropriate. 
48 
Table 9 lists the number of clock cycles required to execute each TMS 9995 instruction for various combinations of on-chip/off-chip location of instruction opcodes, operands, and workspace. (Other combinations can be ex- tropolated from the ones listed.) For instructions with multiple addressing modes for either or both operands, Table 9 lists CLKOUT cycles and associated off-chip memory accesses with all operands addressed in the work- space register mode. To determine the total number of CLKOUT cycles and associated off-chip memory accesses required for other addressing modes, the appropriate values from Table "A" (Table 10) are added to the base amounts for that instruction. 
The total execution time for an instruction is: 
T 
= 
tc2 [C1 + C2 + W (XM1 + XM2}] 
where 
T 
= 
total instruction execution time 
tc2 
C1 
C2 
= 
= 
= 
W 
XM1 
XM2 
= 
= 
= 
CLKOUT cycle time 
base CLKOUT cycles 
additional CLKOUT cycles for operand address 
derivation (values in Table"A" are for one 
operand only) 
number of Wait states per off-chip (byte length) memory cycle 
base off-chip (byte length) memory cycles 
additional off-chip (byte length) memory cycles 
for operand address derivation (values in Table "A" 
are for one operand only) 
Several examples are listed in Table 11. 
49 
TABLE 9 INSTRUCTION EXECUTION TIMES 
Opcodes & Immediate Operands Off 
Opcodes & Immediate Operands Off 
Chip; Source 
INSTRUCTION 
Opcodes & All Operands 
On Chip 
Operand Off 
Chip; All Other Operands On 
Chip; Destination 
Operand On 
All Operands 
Chip 
Chip 
Off Chip 
Opcodes & 
Operand Address 
Derivation 
0 
C1 
XM1 
C1 
XM1 
C1 
XM1 
C1 
XM1 
Source Dest 
A 
4 
0 
5 
2 
6 
4 
8 
A 
A 
AB 
4 
0 
5 
2 
5 
3 
5 
5 
A 
A 
ABS 
3 
0 
4 
2 
6 
6 
6 
6 
A 
ΑΙ 
4 
0 
6 
4 
6 
4 
8 
8 
ANDI 
4 
0 
6 
4 
6 
4 
8 
8 
— 
B 
3 
0 
4 
2 
4 
2 
4 
2 
A 
BL 
5 
0 
6 
2 
7 
4 
7 
4 
A 
BLWP 
11 
0 
12 
2 
145 
66 
17 
12 
A 
C 
4 
0 
5 
2 
6 
4 
7 
6 
A 
A 
CB 
4 
0 
5 
2 
CI 
4 
0 
6 
4 
LO CO 
5 
3 
5 
4 
A 
A 
6 
4 
7 
6 
CKOF 
7 
0 
8 
2 
8 
2 
8 
2 
CKON 
7 
0 
8 
2 
8 
2 
8 
2 
CLR 
3 
0 
COC 
4 
0 
CZC 
4 
0 
455 
2 
5 
4 
5 
4 
A 
2 
6 
4 
7 
6 
A 
2 
6 
4 
7 
6 
A 
DEC 
3 
0 
4 
2 
6 
6 
6 
6 
A 
DECT 
3 
0 
4 
2 
6 
6 
6 
6 
A 
DIV (ST4 is set) 
6 
0 
7 
2 
8 
4 
10 
8 
A 
DIV (ST4 is reset)? 
28 
0 
29 
2 
30 
4 
34 
12 
A 
DIVS (ST4 is set) 
10 
0 
11 
2 
12 
4 
36 
8 
A 
DIVS (ST4 is reset) 
33 
0 
34 
2 
35 
4 
39 
12 
A 
IDLE® 
7+21 
0 
8+21 
2 
8+21 
2 
8+21 
2 
INC 
3 
0 
4 
2 
6 
6 
6 
6 
A 
INCT 
3 
0 
4 
2 
6 
6 
6 
6 
A 
INV 
3 
0 
4 
2 
6 
6 
6 
6 
A 
JUMP (All Jump Instructions) 
3 
0 
4 
2 
4 
2 
4 
2 
— 
LDCR (C=0) 
41 
0 
42 
2 
43 
4 
44 
6 
A 
LDCR (1<C<15) 
9+2C 
0 
10+2C 
2 
11+2C 
4 
12+2C 
6 
A 
LI 
3 
0 
5 
4 
5 
4 
6 
6 
LI 
LIMI 
5 
0 
7 
4 
7 
4 
7 
4 
LREX 
7 
0 
00 
8 
2 
00 
8 
2 
8 
2 
LST 
5 
0 
6 
2 
6 
2 
7 
4 
LWP 
4 
0 
5 
2 
6 
2 
6 
4 
LWPI 
4 
0 
6 
4 
6 
co 
4 
6 
4 
MOV 
3 
0 
4 
2 
LO 
5 
4 
MOVB 
3 
0 
4 
2 
4 
3 
64 
6 
A 
A 
4 
A 
A 
MPY+ 
23 
0 
24 
2 
25 
4 
28 
10 
A 
MPY+ 
23 
0 
25 
4 
26 
6 
29 
12 
A 
MPYS 
25 
0 
26 
2 
27 
4 
30 
10 
A 
NEG 
3 
2 
6 
6 
6 
6 
A 
ORI 
4 
0 
6 
4 
6 
4 
8 
RSET 
7 
0 
8 
2 
8 
2 
8 
2 
RTWP 
6 
0 
7 
2 
70 
20 
10 
8 
— 
S 
4 
2 
6 
4 
8 
8 
A 
A 
* These values will apply to future parts following Revision B. (Revision B parts are identifiable by a "B" in the date code of the symbolization 
on the part. Future versions will use D, E, etc. instead of B.) 
+ 
These values apply up to and including Revision B, 
50 
TABLE 9 INSTRUCTION EXECUTION TIMES (Concluded) 
Opcodes & Immediate 
Opcodes & Immediate Operands Off 
Chip; Source 
INSTRUCTION 
All Operands 
Operands Off 
Operand Off 
Opcodes & 
Chip; All Other 
Chip; Destination 
Opcodes & 
Operands On 
Operand On 
All Operands 
On Chip 
Chip 
Chip 
Off Chip 
Operand Address 
Derivation 
0 
C1 
XM1 
C1 
XM1 
C1 
XM1 
C1 
XM1 
Source 
Dest 
SB 
4 
0 
5 
2 
3 
5 
5 
A 
A 
SBO 
8 
0 
9 
2 
9 
2 
10 
www 
SBZ 
8 
0 
9 
2 
9 
2 
10 
4 
SETO 
3 
0 
4 
2 
5 
4 
5 
SHIFT (C#0) 
5+C 
0 
6+C 
2 
6+C 
SHIFT (C=0, Bits 12-15 of WRO=0) 
23 
0 
24 
2 
24 
22 
8+C 
6 
27 
SHIFT (C=0, Bits 12-15 of WRO=N=0) 
7+N 
0 
8+N 
2 
8+N 
2 
11+N 
SOC 
4 
0 
5 
2 
6 
4 
8 
SOCB 
4 
0 
5 
2 
5 
3 
000000 LO 
8 
8 
----- 
8 
A 
A 
A 
A 
STCR (C=0) 
43 
0 
44 
2 
46 
6 
47 
STCR (1<C<8} 
19+C 
0 
20+C 
2 
22+C 
to 
6 
23+C 
0000 
8 
A 
8 
A 
STCR (9<C<15) 
27+C 
0 
28+C 
2 
30+C 
6 
31+C 
8 
A 
STST 
3 
о 
4 
STWP 
3 
0 
4 
SWPB 
13 
0 
14 
SZC 
4 
0 
5 
NNN│N 
2 
4 
2 
5 
4 
2 
4 
2 
4 
- 
2 
16 
6 
16 
6 
A 
2 
6 
4 
8 
A 
A 
SZCB 
4 
0 
TB 
8 
0 
9 
XO 
2 
0 
3 
222 
5 
3 
5 
5 
A 
A 
9 
2 
10 
4 
4 
4 
4 
4 
A 
ХОР 
15 
0 
16 
186 
66 
22 
14 
A 
XOR 
4 
5 
8 
A 
Interrupt Context Switch (For any 
interrupt, including Reset, NMI, MID, and overflow) 
148 
08 
176 
66 
176 
66 
209 
129 
NOTES: 
Additional cycles to be added, if appropriate, are listed in Table "A" (Table 11). 
Execution time is dependent upon the partial quotient after each clock cycle during execution. Clock cycles shown are for worst-case operands. 
Will remain in Idle state until an unmasked interrupt re- quest occurs (1 = number of CLKOUT cycles until request occurs). 
4 Execution time shown does not include execution time of 
instruction at source address. 
6 Trap vector off chip; New workspace on chip. 
6 
Registers for register-only instructions are on chip (Shift instructions, STST, LST, STWP, LWP) and registers for instructions where an additional register is required are on- 
chip (AI, ANDI, BL, CH, LDCR, LI, ORI, SBO, SBZ, STCR. TB, Shift instructions). 
Workspace on chip 
Trap vector on chip; New workspace on chip (NM only) Trap vector and New workspace on chip 
51 
ADDRESSING MODE 
WR 
TABLE 10 OPERAND ADDRESS DERIVATION (TABLE "A") 
Workspace Registers, Base Address For Index-Addressed Operands, And Symbolic (Direct) Addresses On Chip 
C2 
XM2 
о 
0 
(Ts or TD = 00) 
Workspace Registers 
On Chip; Base Address For Index- Addressed Operands And Symbolic (Direct) Addresses Off Chip 
XM2 
C2 
0 
Workspace Registers Off Chip; Base Address For Index- Addressed Operands And Symbolic (Direct) Addresses On Chip 
C2 
XM2 
Workspace Registers, Base Address For Index-Addressed Operands, And Symbolic (Direct) Addresses Off Chip 
C2 
0 
XM2 
WR Indirect 
(Ts or TD = 01) 
WR Indirect 
Auto Increment 
(Ts or TD = 11) 
Symbolic 
(Ts or TD = 10, 
S or D 
= 
1) 
Indexed 
(Ts or TD = 10, S or D # 0) 
0 
2 
2 
2 
3 
3 
0 
5 
10 
1 
2 
2 
1 
4 
~ 
52 
4 
2 
10 
5 
N 
+ 
2 
2 
LO 
5 
4 
53 
TABLE 11 
INSTRUCTION EXECUTION TIME EXAMPLES 
Opcodes, base addresses for index-addressed operands, symbolic (direct) addresses, workspace registers, symbolic (direct) operands, and index- addressed operands all on chip. 
Opcodes, base addresses for index-addressed operands, and symbolic (direct) addresses off chip; workspace registers, symbolic (direct) operands, and index-addressed operands on chip. 
Opcodes, base addresses for index-addressed operands, symbolic (direct) addresses, workspace registers, symbolic (direct) operands, and index- addressed operands all off chip. 
EXAMPLE 
Total Clock 
Cycles 
Total Clock 
Cycles 
Total Clock 
Cycles 
C1 
XM1 C2 XM2 
O Wait 
States 
1 Wait 
State 
C1 XM1❘ C2 XM2❘ 0 Wait 
States 
1 Wait 
State 
C1 
XM1 C2 XM2 
0 Wait 
States 
1 Wait 
State 
Off Chip Off Chip 
Off Chip Off Chip 
Off Chip Off Chip 
MOV R1, R2 
3 
0 
0 
3 
4 
2 
MOV R1, *R2 
3 
0 
7 
0 
4 
MOV R1, *R2+ 
3 
0 
MOV R1, 
@LABEL 
3 
1 
MOV R1, @TABLE (R2) 
3 
0 
MOV *R2+, @LABEL 
3 
0 
4 
33 + 
0 
6 
0 
4 
464 
4 
2 
4 
2 
4 
2 
0 
0 
olo 
6 
7 
MOV @LABEL1, @LABEL2 
3 
0 
2 
0 
00 
6 
4 
7 
4 
2 
5 
(^) 
4 
2 
32454 
NNNNNNTN 
O 
4 
6 
6 
1 
0 
5 
7 
6 
0 
7 
9 
6 
2 
6 
10 
6 
2 
8 
12 
2 
9 
13 
23 
6 
6 
4 
8 
14 
6 
ONDN574 
6996600 
0 
12 
2 
2 
8 
16 
11 
21 
6 
24 
to 
8 
16 
11 
21 
13 
25 
4 
10 
20 
1. 
TMS 9995 PRELIMINARY ELECTRICAL SPECIFICATIONS 
5.1 
ABSOLUTE MAXIMUM RATINGS OVER OPERATING FREE-AIR TEMPERATURE RANGE (UNLESS OTHERWISE NOTED)* 
Supply voltage, VCC+ 
All input voltages 
Output voltage 
Continuous power dissipation 
-0.3 to 7 V 
-0.3 to 20 V 
-0.3 to 7 V 
1 W 
Operating free-air temperature range 
Storage temperature range 
0°C to 70°C 
-55°C to +150°C 
*Stresses beyond those listed under "Absolute Maximum Ratings" may cause permanent damage to the device. This is a stress rating only and functional operation of the device at these or any other conditions beyond those indicated in the "Recommended Operating Conditions" section of this specification is not implied. Exposure to absolute-maximum-rated conditions for extended periods may affect device reliability. *All voltage values are with respect to VSS. 
5.2 
RECOMMENDED OPERATING CONDITIONS 
PARAMETER 
Supply voltage, VCC 
MIN NOM MAX 
4.5 
UNIT 
LO 
5 
5.5 
V 
Supply voltage, VSS 
0 
V 
High-level input voltage VIH (all inputs except XTAL1, XTAL2/CLKIN) High-level clock input voltage, VIHC 
2 
VCc+1 
V 
2.7 
Vcc + 
+1 
V 
Low-level input voltage, VIL (all inputs except XTAL1, XTAL2/CLKIN) 
-0.3 
0.8 
V 
Low-level clock input voltage, VILC 
-0.3 
0.6 
V 
High-level output current, IOH (all outputs) 
100 
на 
Low-level output current, IOL (all outputs) Operating free-air temperature, TA 
2 
MA 
70 
ас 
5.3 
ELECTRICAL CHARACTERISTICS OVER RECOMMENDED FREE-AIR TEMPERATURE (UNLESS OTHERWISE NOTED) 
PARAMETER 
TEST CONDITIONS 
MIN 
TYP† MAX 
UNITS 
VOH 
High-level output voltage 
VCC = MIN 
IOH = MAX 
2.4 
3 
V 
VOL 
Low-level output voltage 
VCC = MIN 
IOL = MAX 
0.3 
0.4 
V 
loz 
Off-state output current 
VCC = MAX 
Vo = 2.4 V 
20 
ΜΑ 
Vo = 0.4 V 
-20 
ма 
Input current 
V1 = Vss to Vcc 
+50 
на 
Icc 
Supply current 
VCC = MAX 
150 
180 
mA 
Data Bus 
25 
CI 
Input Capacitance 
pF 
All others 
f = 1 MHz, All 
15 
Data Bus 
other pins 0 V 
CO 
PF 
Output Capacitance 
All others 
10 
*All typical values are at VCC 5 V, T 
= 
A 
25°C 
54 
5.4 
CLOCK CHARACTERISTICS 
The TMS 9995 can use either its internal oscillator or an external frequency source for a clock 
5.4.1 
Internal Clock Option 
5.4.2 
The internal oscillator is enabled by connecting a crystal across XTAL1 and XTAL2/CLKIN. (See Figure 25). The frequency of CLKOUT is one-fourth the crystal fundamental frequency. 
XTAL1 
TMS 9995 
XTAL2/CLKIN 
ᅥ마 
CRYSTAL 
C2 
C1 
NOTE: C1 and C2 represent the total capacitance on these pins including strays and parasitics. 
PARAMETER Crystal frequency, fx C1, C2 
FIGURE 25 INTERNAL OSCILLATOR 
— 
TEST CONDITIONS 
0°C - 70°C 
0°C - 70°C 
MIN 
NOM MAX 
UNIT 
8 
12 
12.1 
MHz 
10 
15 
25 
PF 
External Clock Option 
An external frequency source can be used by injecting the frequency directly into XTAL2/CLKIN with XTAL1 left unconnected. (See Figure 26). The external frequency must conform to the following specifications. The frequency of CLKOUT is one-fourth that of the frequency injected. 
fext 
External source frequency 
tc1 
Input oscillator cycle time 
tr1 
Input oscillator rise time 
tWH1 
Input oscillator pulse width high 
tf1 
Input oscillator fall time 
tWL1 
Input oscillator pulse width low 
PARAMETER 
55 
MIN 
NOM MAX UNITS 
12 
12.1 MHz 
82 
83.5 
125 
ns 
5 
15 
ns 
tc1-tR1 
ns 
5 
15 
ns 
1/2tc1-tf1 
ns 
TMS 9995 
XTAL2/CLKIN 
XTAL1 
CLKIN 
NO 
CONNECTION 
EXTERNAL 
OSCILLATOR 
FIGURE 26 - EXTERNAL OSCILLATOR 
5.5 
Isu 1 
th1 
tsu2 
th2 
TIMING REQUIREMENTS OVER RECOMMENDED OPERATING CONDITIONS 
PARAMETER 
Setup time, READY prior to ↓ CLKOUT (memory cycles) 
Hold time, READY after ↓ CLKOUT (memory and CRU cycles) Setup time, Data prior to ↓ CLKOUT 
Hold time, Data after↓ CLKOUT 
MIN 
NOM MAX UNITS 
100 
ns 
0 
65 
0 
tsu3 
Setup time, CRUIN prior to 
CLKOUT 
100 
th3 
Hold time, CRUIN prior to ↓ CLKOUT 
0 
tsu4 
Setup time, READY prior to ↓ CLKOUT (CRU cycles) 
100 
tsu5 
Setup time, HOLD prior to ↑ CLKOUT 
125 
tsu6 
Setup time, RESET and NMI prior to ↓ CLKOUT 
140 
tWL4 
Pulse width, Interrupt inputs 
1/2tc2 
tf3 
twH3 
Fall time, INT1, INT4/EC inputs 
15 
Pulse width, EC input high 
160 
tWL5 
tc3 
Pulse width, EC input low 
160 
Cycle time, EC input 
3tc2 
22222222 22222 
5.6 
SWITCHING CHARACTERISTICS OVER RECOMMENDED OPERATING CONDITIONS (See Figure 34) 
PARAMETER 
TEST CONDITIONS 
MIN 
TYP 
MAX 
UNITS 
td1 
Delay time, CLKIN↓ to CLKOUT ↓ 
5 
150 
กร 
CLKOUT External clock source 
4tc1 
*c2 
Cycle time Internal oscillator XTAL freq = fxx 
4/fx 
tr2 
Rise time, CLKOUT output 
20 
30 
10 
20 
tf2 
Fall time, CLKOUT output 
twH2 
Pulse width high, CLKOUT output 
1⁄2tc2-tr2 
twL2 
Pulse width low, CLKOUT output 
1⁄2tc2-tf2 
td2 
Delay time, CLKOUT to address valid 
4c2 
tc2+45 
td3 
td4 
td5 
td6 
td7 
td8 
td9 
td 10 
Delay time, ↓ CLKOUT to MEMEN fow Delay time, ↓ CLKOUT to MEMEN high Delay time, ↑ CLKOUT to DBIN low Delay time, CLKOUT to DBIN high 
Delay time, ↑ CLKOUT to IAQ/HOLDA high 
Delay time, CLKOUT to IAQ/HOLDA low 
Delay time, ↑ CLKOUT to data output valid Delay time, ↑ CLKOUT to WE/CRUCLK low 
SEE 
FIGURE 35 
1⁄4tc2 
tc2+40 
tc2 
1⁄4tc2+50 
0 
40 
= 
R1 2.4 ΚΩ 
0 
50 
R2 = 24 kn 
0 
40 
CL = 100 pF 
0 
50 
0 
40 
0 
40 
td 11 
Delay time, ↑ CLKOUT to WE/CRUCLK high 
0 
50 
tr3 
Rise time, WE/CRUCLK outputs 
20 
50 
tACC 
Access time, memory read cycles 
tc2-135 
th4 
Hold time, address and CRUOUT outputs 
tc2-40 
th5 
Hold time, data output 
tc2-40 
tWL3 
Pulse width low, WE/CRUCLK output 
1⁄2tc2-40 
tdz 
Output disable time 
1⁄4tc2+60 
2222222222222222222222 
56 
tf1 
XTAL2/CLKIN 
tc1 
CLKOUT 
NOTE: 
twH1 
td1 
tr1 
.twL1 
tc2 
tr2 
tf2 
twH2 
twL2 
tc1, tf1, tr1, tWH1, tWL1, and td1 become undefined parameters when a crystal is connected between XTAL1 and XTAL2/CLKIN and the internal oscillator is consequently enabled, 
FIGURE 27 TMS 9995 CLOCK TIMING 
COMMON SIGNALS: 
CLKOUT 
td2 
A0-A14, A15/CRUOUT 
VALID 
td3 
MEMEN 
READY 
(See Note) 
MEMORY READ CYCLE: 
DO-D7 
DBIN 
IAQ/HOLDA 
(If Asserted) 
MEMORY WRITE CYCLE: 
DO-D7 
XXXX XXX 
WE/CRUCLK 
LAST CLKOUT HIGH-TO- 
LOW TRANSITION OF 
PREVIOUS CYCLE 
+ 
XXX 
tsu1| 
th1 
tACC 
tsu2 
td5 
td7 
td4 
th2 
DATA IN 
VALID 
td6 
td8 
XXXXXXXX 
th4' 
NEXT CYCLE IS 
th5 
MEMORY READ 
td9 
VALID 
d11 
td10 
tr3 
tWL3 
NOTE: Cycle shown is for no wait states (with wait states, CLKOUT cycles are added, but the switching parameters do not change). 
FIGURE 28 
- 
TMS 9995 MEMORY INTERFACE TIMING 
57 
57 
58 
COMMON SIGNALS: 
CLKOUT 
td2 
A0-A14 
VALID 
td9 
DO-D2 
VALID 
MEMEN VOH 
READY (See Note) 
XXX 
CRU INPUT CYCLE: 
DBIN 
CRUIN 
CRU OUTPUT, EXTERNAL 
INSTRUCTION CYCLE: 
NOTE: 
WE/CRUCLK 
td2· 
A15/CRUOUT 
BIT OUT VALID 
tsu4 
td5 
th1 
x 
XXXXXXXX 
td6 
tsu3 
BIT IN 
VALİD 
th3- 
td10 
td11 
twL4 
LAST CLKOUT HIGH-TO- 
LOW TRANSITION OF 
PREVIOUS CYCLE 
Cycle shown is for no wait states (with wait states, CLKOUT cycles get added, but the switching parameters do not change). 
→ 
FIGURE 29 TMS 9995 CRU, EXTERNAL INSTRUCTION TIMING 
th4' 
tr3 
th4 
CLKOUT 
RESET, NMI 
CLKOUT 
tsu5 
HOLD 
tsu6 
PANY 
ANY NUMBER 
OF CLKOUT CYCLES 
+ 
FIGURE 30 TMS 9995 RESET AND NMI TIMING 
IAQ/HOLDA 
A0-A14, A15/CRUOUT, 
tdz 
DO-D7, DBIN, 
WE/CRUCLK 
VALID 
INT1, INT4/EC 
LAST CYCLE CONTROLLED 
BY TMS 9995 
FIGURE 31 
- 
tf3 
td7 
TMS 9995 HOLD TIMING 
tWL4 
NOTE: 
For INT4/EC, decrementer is configured as a timer or is disabled. 
ANY NUMBER 
OF CLKOUT CYCLES 
FIGURE 32 - TMS 9995 INTERRUPT INPUT TIMING 
INT4/EC 
tf3 
twL5 
NOTE: Decrementer is configured as an Event Counter and is enabled. 
tc3 
tsu5 
FIGURE 33 TMS 9995 EVENT COUNTER INPUT TIMING 
59 
HIGH-Z 
twH3' 
tsu6 
td8 
VALID 
NEXT CYCLE CONTROLLED 
BY TMS 9995 
TMS 9995 
OUTPUTS: 
2.4 
2.2 V 
0.6 V 
0.4 V 
0 
TMS 9995 
INPUTS: 
2.0 V 
1.88 V 
0.92 V 
0.80 V 
VOH (MIN) 
90% 
10% 
VOL (MAX) 
VIH (MIN) 
90% 
10% 
VIL (MAX) 
FIGURE 34 - MEASUREMENT POINTS FOR SWITCHING CHARACTERISTICS 
FROM OUTPUT 
UNDER 
TEST 
TEST 
POINT 
VCC 
R2 
CL 
R1 
NOTE: See Switching Characteristics for values of CL, R1, R2 
All diodes are IN916 or IN3064 
FIGURE 35 
- 
SWITCHING CHARACTERISTICS TEST LOAD CIRCUIT 
60