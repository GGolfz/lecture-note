# Chapter 1 Computer System Overview

## Basic Elements
---
There are four main structural components of computer that inter connected in some fashion to achieve the main function of computer which  is execute programs.

1) **Processor**: Controls the operation of computer and performs data processing function. When it is only one processor it refer to Central Processing Unit (CPU)
2) **Main Memory**: Stores data and programs. This type of memory is volatile. When computer is shutdown, contents of memory are lost, but the disk memory are retained even when computer shutdown. It also refer to Primary Memory
3) **I/O Modules**: Move data between the computer and extenal environment such as disk, mouse, keyboard.
4) **System bus**: Provides for communication among processors, main memory, and I/O Modules

<img src="https://github.com/GGolfz/lecture-note/tree/master/OSLab/image/OS_fig1.jpeg" width="400" height="400">

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

<img src="https://github.com/GGolfz/lecture-note/tree/master/OSLab/image/OS_fig2.jpeg" height="250px">
<br/>
<img src="https://github.com/GGolfz/lecture-note/tree/master/OSLab/image/OS_fig3.jpeg" width="400px">

## The Memory Hierachy
---
## Cache Memory
---
## Direct Memory Access
---
## Multiprocessor and Multicore Organization