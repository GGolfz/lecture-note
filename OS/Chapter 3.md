# Chapter 3 Process Description and Control

ในบทนี้ จะพูดถึงเรื่องของ Process ทั้งหมด เริ่มต้นตั้งแต่ ใน process นึงเนี้ย ประกอบด้วยอะไรบ้าง มีอะไรเป็นส่วนสำคัญ แต่ละส่วนทำงานยังไง รวมไปถึงขั้นตอนการทำงานของ Processor ในการจัดการกับ Process ตั้งแต่ในอดีตยันปัจจุบันมีการเปลี่ยนแปลงไปในทิศทางยังไง หรือพัฒนามาแบบไหน นอกจากนี้ยังพูดถึงกระบวนการการเกิดขึ้นของ Processs ไปกระทั่งการสิ้นสุดของ Process

## OS Management of Application Execution

OS มี Resource ที่จำกัด และ Resource นึงจำเป็นต้องแบ่งปันกับหลาย ๆ Application ทำให้ตัว Processor ต้องทำหน้าที่ในการสลับสับเปลี่ยนว่า Application ไหนจะได้ทำงานหรือใช้ทรัพยากรนั้น ๆ 

## Process Elements

มีองค์ประกอบมากมายหลากหลายอย่างใน Process แต่มีสิ่งที่สำคัญมาก ๆ อยู่สองอย่างคือ **1.Program Code** คือโค้ดที่ถูกเอามา Execute หรือประมวลผล ซึ่งจะมีการใช้งานร่วมกับจากหลาย ๆ Process ที่อยู่ในโปรแกรมเดียวกัน และ **2.A set of data associated with that code** หรือก็คือข้อมูลที่เกี่ยวข้องกับโค้ดนั้น หรือโค้ดนั้นอาจจะจำเป็นต้องใช้ข้อมูลนั้นในการประมวลผลนั่นเอง โดยการที่ Processor เริ่มต้นการ Execute Code นี้ เราจะเรียกกันว่ามันคือ **Process**

นอกจาก 2 องค์ประกอบหลักที่สำคัญแล้ว OS ยังมีองค
ประกอบอื่นๆ อีก ไม่ว่าจะเป็น **Identifier** ที่ใช้เป็นรหัสประจำตัวของแต่ละ Process, State ที่ใช้บอกสถานะปัจจุบันของ Process นั้น ๆ, **Priority** ที่ใช้บอกความสำคัญของ Process, **Program counter** ที่ใช้ชี้ไปยัง Instruction ถัดไปที่จะถูก Execute, **Memory Pointer** สำหรับการชี้ไปยัง ข้อมูลที่เกี่ยวข้องกับ Process, **Context Data** ข้อมูลภายใน register ขณะที่ process execution, **I/O Status information** ใช้เก็บข้อมูลการเชื่อมต่อกับ Input Output, **Accounting Information** สำหรับการเก็บข้อมูลผู้ใช้งาน Uptime ต่าง ๆ ซึ่งองค์ประกอบพวกนี้จะถูกเก็บรวมกันและถูกเรียกว่า **Process Control Block**