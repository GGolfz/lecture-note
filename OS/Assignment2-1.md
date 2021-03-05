2.1 Suppose we have four jobs in a computer system.in the order JOB1, JOB2, JOB3, and JOB4. 
- JOB1 requires 8s of CPU time and 8s of I/O time; 
- JOB2 requires 4s of CPU time and 14s of disk time;
- JOB3 requires 6s of CPU time;
- JOB4 requires 4s of CPU time and 16s of printer time;
Define the following quantities for system utilization:
- Turnaround time = actual time to complete a job
- Throughput = average number of jobs completed per time period T
- Processor utilization = percentage of time that the processor is active (not waiting)

	|J1		|J1		|J2	 |J2			|J3		|J4	 |J4			  |
A	|-------|-------|----|--------------|-------|----|----------------|
	0		8		16	20				34		40	44				 60
### Turnaround Time: Time for complete 
- J1 = 16
- J2 = 34
- J3 = 40
- J4 = 60

### Throughput

Throughput
60		-> 		4
T		->		T/15

Average
T1 = 16 -> T/16
T2 = 18 -> T/18
T3 = 6	-> T/6
T4 = 20  -> T/20

( T/16 + T/18 + T/6 + T/20 ) / 4 = Average อ.บอกว่า ไม่ช่วยเท่าไร

### CPU Utilization
Cpu usage = 8+4+6+4 = 22
CPU Util = 22/60
B)

|J1-|-I/O-J1----|J1-|IO1|		|J1-|	|J1-|
|	|J2-|-Disk2-----|J2-|--Disk2--------|			
|		|J3-|			|J3-|		|J3-|
|			|J4-|-Printer-J-|J4-|---Printer-J4------|
|
|
0	2	4	6	8	10	12	14	16	18	20	22	24	26

### Turnaround
J1	= 22
J2	= 20
J3	= 20
J4	= 26

### Throughput

T = 4T/26

### CPU utilization

CPU util  = 22/26