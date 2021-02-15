# Chapter 3 Process Description and Control

ในบทนี้ จะพูดถึงเรื่องของ Process ทั้งหมด เริ่มต้นตั้งแต่ ใน process นึงเนี้ย ประกอบด้วยอะไรบ้าง มีอะไรเป็นส่วนสำคัญ แต่ละส่วนทำงานยังไง รวมไปถึงขั้นตอนการทำงานของ Processor ในการจัดการกับ Process ตั้งแต่ในอดีตยันปัจจุบันมีการเปลี่ยนแปลงไปในทิศทางยังไง หรือพัฒนามาแบบไหน นอกจากนี้ยังพูดถึงกระบวนการการเกิดขึ้นของ Processs ไปกระทั่งการสิ้นสุดของ Process

## OS Management of Application Execution

OS มี Resource ที่จำกัด และ Resource นึงจำเป็นต้องแบ่งปันกับหลาย ๆ Application ทำให้ตัว Processor ต้องทำหน้าที่ในการสลับสับเปลี่ยนว่า Application ไหนจะได้ทำงานหรือใช้ทรัพยากรนั้น ๆ 

## Process Elements

มีองค์ประกอบมากมายหลากหลายอย่างใน Process แต่มีสิ่งที่สำคัญมาก ๆ อยู่สองอย่างคือ **1.Program Code** คือโค้ดที่ถูกเอามา Execute หรือประมวลผล ซึ่งจะมีการใช้งานร่วมกับจากหลาย ๆ Process ที่อยู่ในโปรแกรมเดียวกัน และ **2.A set of data associated with that code** หรือก็คือข้อมูลที่เกี่ยวข้องกับโค้ดนั้น หรือโค้ดนั้นอาจจะจำเป็นต้องใช้ข้อมูลนั้นในการประมวลผลนั่นเอง โดยการที่ Processor เริ่มต้นการ Execute Code นี้ เราจะเรียกกันว่ามันคือ **Process**

นอกจาก 2 องค์ประกอบหลักที่สำคัญแล้ว OS ยังมีองค
ประกอบอื่นๆ อีก ไม่ว่าจะเป็น **Identifier** ที่ใช้เป็นรหัสประจำตัวของแต่ละ Process, State ที่ใช้บอกสถานะปัจจุบันของ Process นั้น ๆ, **Priority** ที่ใช้บอกความสำคัญของ Process, **Program counter** ที่ใช้ชี้ไปยัง Instruction ถัดไปที่จะถูก Execute, **Memory Pointer** สำหรับการชี้ไปยัง ข้อมูลที่เกี่ยวข้องกับ Process, **Context Data** ข้อมูลภายใน register ขณะที่ process execution, **I/O Status information** ใช้เก็บข้อมูลการเชื่อมต่อกับ Input Output, **Accounting Information** สำหรับการเก็บข้อมูลผู้ใช้งาน Uptime ต่าง ๆ ซึ่งองค์ประกอบพวกนี้จะถูกเก็บรวมกันและถูกเรียกว่า **Process Control Block**

## Process States

สำหรับการทำงานของ Process เราจะมองว่า มันจะมีการทำงานเป็นลำดับเรียงต่อกัน โดยจะเรียง List ของ Process ว่า **Trace** ของ Process ซึ่งสำหรับการเปลี่ยนไปมาในแต่ละ​ Process จะถูกควบคุมด้วยโปรแกรมขนาดเล็ก ๆ ตัวนึงที่เรียกว่า **Dispatcher** ซึ่งมีหน้าที่สลับไปมาในแต่ละ Process

จากรูปข้างต้นจะเห็นว่า ในการเปลี่ยนจาก 5000 ไป execute  8000 หรือ 12000 ซึ่งเป็น Process ที่แตกต่างกัน จะมีช่วงเล็ก ๆ ที่ Execute Process 100 - 105 หรือก็คือการ Execute ของ Dispatcher นั่นเอง

<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_ch3_fig1.jpeg" width="400" height="400" alt="figure1">

### Two State Process Model
เป็นรูปแบบการควบคุมการทำงานของ OS โดย Two State ที่กล่าวถึง คือ Running และ Not Running
จากรูปด้านล่าง เมื่อ OS สร้าง Process ใหม่ขึ้นมา Process นั้นจะอยู่ที่สถานะ Not Running และ OS จะพยายามหาโอกาสที่จะ execute Process นั้น เมื่อ Process ที่รันอยู่ ทำงานเสร็จ จะให้ Dispatcher ไปเลือก Process ที่ Not Running ออกมาจาก Quece เพื่อทำงาน

<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_ch3_fig2.jpeg" width="400" height="400" alt="figure2">

## Process Creation

การกำเนิดขึ้นของ Process สามารถกำเนิดขึ้นได้จาก 4 สาเหตุหลัก ๆ คือ 
- New Batch Job
- Interactive Log On
- Created by OS to provide a service (e.g. continue printing) 
- Spawn by existing process (Parent process generate child process)

## Process Termination

การที่ Process จะสิ้นสุดได้ก็มีสาเหตุได้หลากหลายแบบ คือ
- Normal Completion (Finish then terminate)
- Time Limit Exceeds (Execute more than given time)
- Memory Unavailable (Not enough memory for execute)
- Bounds Violation (Cannot Access memory location)
- Protection Error (Not allow to access resource)
- Arithmetic Error (Divide by 0)
- Time overrun E|(Waiting longer than maxmimum)
- I/O Failture (Error when input/output)
- Invalid Instruction 
- Privileged Instruction
- Data misuse (Wrong type of data usage or not initialize)
- Operator or OS intervention (Deadlock)
- Parent Termination (For fourth type of creation that parent create child so if parent died child died)
- Parent Request (Parent request to terminate child process)

## A Fifth State Model

จากรูปแบบเดิมทำให้ในบางครั้ง Process ที่ถูกนำมา Execute อะ มันไม่เกิดประโยชน์เพราะตัว Resource ที่ใช้บางอันยังไม่พร้อมทำงานทำให้เสียเวลา เปล่า ๆ เขาเลยปรับ State ใหม่มาเป็น New, Ready, Running, Blocked, และ Exit
โดย Process ที่เพิ่งเข้ามาจะถูกมองว่าเป็น New จนกว่าจะถูก OS Admit เข้าสู่ Pool of Executable เป็นสถานะ Ready ถ้าพร้อมทำงานทันที หรือ Blocked ถ้ายังไม่พร้อม โดย Ready จะสามารถเปลี่ยนเป็น Running ได้ ถ้า Processor ว่าง และในขณะที่ Running สามารถเปลี่ยนไปได้ 3 รูปแบบคือ Ready คือเมื่อจบแล้วยังสามารถทำต่อเลยได้, Blocked เมื่อต้องรอ Resource อะไรสักอย่าง, หรือ Exit เมื่อเสร็จสิ้นกระบวนการ โดยสำหรับสถานะ BLocked ก็จะเปลี่ยนไปได้คือ Ready คือพร้อมทำงาน หรือ Exit เมื่อถูกหยุดการทำงาน

<img src="https://github.com/GGolfz/lecture-note/blob/master/image/OS_ch3_fig3.jpeg" width="400" height="400" alt="figure3">