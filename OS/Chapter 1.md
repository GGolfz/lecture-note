# Chapter 1 Computer System Overview

## Basic Elements
---
There are four main structural components of computer that inter connected in some fashion to achieve the main function of computer which  is execute programs.

1) **Processor**: Controls the operation of computer and performs data processing function. When it is only one processor it refer to Central Processing Unit (CPU)
2) **Main Memory**: Stores data and programs. This type of memory is volatile. When computer is shutdown, contents of memory are lost, but the disk memory are retained even when computer shutdown. It also refer to Primary Memory
3) **I/O Modules**: Move data between the computer and extenal environment such as disk, mouse, keyboard.
4) **System bus**: Provides for communication among processors, main memory, and I/O Modules

<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_fig1.jpeg" width="400" height="400">

## Evolution of the Microprocessor
---
From Hardware revolution that make **microprocessor** which is the single chip that contain processor. It continually evolved to the point that faster than general purpose processor and it also multiprocessor (each chip contain many cores).

**Graphical Processing Unit (GPUs)** provide efficient computation on arrays of data using Single Instruction Multiple Data (SIMD) techniques. It use for general numerical processing, physics simulation for games, computations on large spreadsheets, rendering animation, and also machine learning.

**Digital Signal Processors** present for dealing with streaming signal (audio or video). It use to be embbed in I/O devices like modems. It help CPU in term of encoding and decoding speech and video (codecs) and also support the encryption and security.

**System on a Chip (SOC)** DSPs,GPUs,Caches, codecs, main momery, and processor put on the same chip.

## Instruction Execution
---

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
---
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
---
## Cache Memory
---
## Direct Memory Access
---
## Multiprocessor and Multicore Organization
