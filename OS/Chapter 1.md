# Chapter 1 Computer System Overview

## Basic Elements

There are four main structural components of computer that inter connected in some fashion to achieve the main function of computer which  is execute programs.

1) **Processor**: Controls the operation of computer and performs data processing function. When it is only one processor it refer to Central Processing Unit (CPU)
2) **Main Memory**: Stores data and programs. This type of memory is volatile. When computer is shutdown, contents of memory are lost, but the disk memory are retained even when computer shutdown. It also refer to Primary Memory
3) **I/O Modules**: Move data between the computer and extenal environment such as disk, mouse, keyboard.
4) **System bus**: Provides for communication among processors, main memory, and I/O Modules

<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_fig1.jpeg" width="400" height="400">

## Evolution of the Microprocessor

From Hardware revolution that make **microprocessor** which is the single chip that contain processor. It continually evolved to the point that faster than general purpose processor and it also multiprocessor (each chip contain many cores).

**Graphical Processing Unit (GPUs)** provide efficient computation on arrays of data using Single Instruction Multiple Data (SIMD) techniques. It use for general numerical processing, physics simulation for games, computations on large spreadsheets, rendering animation, and also machine learning.

**Digital Signal Processors** present for dealing with streaming signal (audio or video). It use to be embbed in I/O devices like modems. It help CPU in term of encoding and decoding speech and video (codecs) and also support the encryption and security.

**System on a Chip (SOC)** DSPs,GPUs,Caches, codecs, main momery, and processor put on the same chip.

## Instruction Execution


Program consist of two steps of instruction
1) Fetching instruction from memory

The processor fetches instruction from memory and Program counter (PC) holds address of next instruction to be fetched. (PC increase after Fetch)

Instruction Register (IR) use for stored fetched instruction 

2) Processor execute instruction

Then loop it.

<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_fig2.jpeg" height="250px">
<br/>
<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_fig3.jpeg" width="400px">

## Interrupt

Interrupt provide way to improve processor utilization, Ex: mose I/O Device slower than processor so during transfer the data to printer the processor must pause and wait until printer receive the data which is very wasteful.
<br/>
<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_fig4.jpeg" width="400px">
<br/>
To fix the above example, the interrupt help processor to change the instruction to do another instruction during wait for printer receive the data as you can see in below figure which is during the I/O get data cpu can continue doing other instruction if there is interrupt.
<br/>
<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_fig5.jpeg" width="400px">
<br/>
If OS have interrupt the instruction cycle will become like this
<br/>
<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_fig6.jpeg" width="400px">
<br/>

Interrupt can be nested interrupt if the incoming instructor has the priority more than current execution.
As you can see from below figure (a) is Sequential Interrupt because Incoming instruction Y is low priority than X so It will wait until X finish Then doing Y
but for (b) is nested interrupt because Incoming instruction Y is higher priority than X so it will interrupt X and doing Y and Y ended it continue doing X.

<br/>
<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_fig7.jpeg" width="400px">
<br/>

## The Memory Hierachy

When we discuss about memory, It have 3 things to concern, How much (Capacity), How fast (access time), and How expensive (cost).
These three factor has the trade-off between them.
- Faster access time, greater cost per bit
- Greater capacity, smaller cost per bit
- Greater capacity, slower access speed
From below figure it construct by access time which the top is fastest and bottom is lowest.

<br/>
<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_fig8.jpeg" width="400px">
<br/>

### Average access time
Suppose that access data in cache is 50ns and in main memory is 240ns (including cache access) and the target data has hit rate for cache is 80%. Construct Average access time for target data.

It will be (0.80 x 50) + (0.20 x 240) = 40 + 48 = 88ns

## Cache Memory

Cache is built for solving the problem that fetching instruction from main memory consume many cycle time. So it cause trade-off among speed, cost, size, If want big size and fast the price will very expensive so it bring us to the principle of locality by providing a small, fast memory between processor and main memory called Cache.

### Characteristic of Cache 
- invisible to OS
- interacts with other memory management hardware\

<br/>
<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_fig9.jpeg" width="400px">
<br/>

From above image, the access time from processor depend on the distance (if near it will fast and if far it will slow ) and the size of memory also increase by the distance (near is small, far is big)

The theory to store data in cache is depend on the latest data (not a frequent) as you can see in below image that if not found in cache it will fetch from main memory and send to processor and also store in cache

<br/>
<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_fig10.jpeg" width="400px">
<br/>


## I/O Techniques

1) Programmed I/O
- The I/O Module performs the requested action then sets the appropriate bits in I/O Status register
- The processor periodically checks the status of the I/O module until it determines the instruction is complete
- With programmed I/O, performance level of the entire system is degraded
2) Interrupt Driven I/O
- Processor issues a n I/O Command to a module and go to do other useful work
- I/O module will interrupt processor when it ready to exchange data.
- Processor executes data transfer and continue processing.
- It more efficient than Programmed I/O because can do other during connect to I/O Module
3) Direct Memory Access (DMA)
- Performed bhy separate module on system bus or incorporated into an I/O Module
- CPU will send ocmmand to DMA (Read/Write request, Address of I/O, Start location, Number of word)
- It will transfer entire block of data directly to and from memory without going through processor 
- More efficient than interrupt and programmed I/O
## Multiprocessor and Multicore Organization

### Symmetric Multiprocessors (SMP)

A stand-alone computer system with following characteristics.
- Two or more similar processors of comparable capability
- Processors share same main memory and interconnected by bus or other  internal connection scheme.
- Processors share access to I/O Device
- All processors can perform same function
- System controlled by integrated operating system that provides interaction between processor and program at job, task, file, and data element level.

### Advantage of SMP

- Performance: Multiple processors => Great performance by parallel
- Availablity: Failure of one processor not affect all machine
- Incremental Growth: Can add processor to enhance performance
- Scaling: Manage price and performance characteristic.

### Multicore Computer
- Chip multiprocessor
- Combine two or more processors (cores) on single chip
- Can include L2,L3 Cache