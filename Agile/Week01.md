# The nature of Software

## Simple Realities of Software Development (ความเป็นจริงของการพัฒนาซอฟต์แวร์)

- A concerted effort to under stand the problem before a software solution is developed
- ควรจะทำความเข้าใจปัญหาร่วมกันก่อนจะเริ่มพัฒนาซอฟต์แวร์เพื่อแก้ไขปัญหาเหล่านั้น

- Complex requirements, large team of people, sophisticated software > Design is pivotal activity

- การมีความต้องการที่ซับซ้อน, ทีมมีสมาชิกเยอะ, ซอฟต์แวร์มีความซับซ้อน ทำให้ **การออกแบบ** เป็นสิ่งที่ **สำคัญ**

- Software should exhibit high quality

- ซอฟต์แวร์ที่พัฒนาขึ้นมาควรมีคุณภาพสูงเสมอ​ (ถ้าทำแล้วไม่ดีก็อย่าทำเถอะ เปลือง cost)

- User base and time-in-use increase, growing demand for adaptation and enhancement > Software should be maintenance

- การมีผู้ใช้มากขึ้นและมีระยะเวลาในการใช้งานมากขึ้น จะเป็นผลให้เกิดการปรับเปลี่ยนและปรับปรุง กล่าวคือ ซอฟต์แวร์ควรได้รับการบำรุงรักษา

- Maintenance => Versioning, bug fixing to improving your software during use of user.

- Agile dealing with the change during development and use as well.

- Easy to change, Easy to adapt => Maintainable Software.

- Maintainable link with design because good design provide easy maintainence.



## Dual Role of Software

### A product

เป็นตัวผลิตภัณฑ์ด้วยตัวเอง

- Deliver the computing potential embodied by computer hardware or a network of computers that are accessible by local software

- ก่อให้เกิดการประมวลผลที่มีประสิทธิภาพแต่คอมพิวเตอร์ทั่วไปยังสามารถใช้งานได้ไม่มีปัญหา (ไม่ใช่แบบประสิทธิภาพดีเลิศ แต่คอมที่จะใช้ต้องดีตามด้วย ควรทำให้คอมธรรมดาก็ใช้งานได้)

- Producing, managing, acquiring, modifying, displaying, or transmitting the information

- ทำหน้าที่ในการผลิต จัดการ แสวงหา ปรับปรุง แสดงผล หรือ ส่งผ่านข้อมูล

### A vehicle for delivering a product

เป็นตัวกลางในการทำงานของซอฟต์แวร์อื่น

- The basis for the control of the computer (Operation System)

- เป็นระบบที่เป็นพื้นฐานสำหรับควมคุมคอมพิวเตอร์ 

- The communication of information (Network System)

- เป็นระบบที่ใช้สำหรับส่งผ่านข้อมูลจากซอฟต์แวร์นึงไปอีกซอฟต์แวร์นึง

- The creation and control of other program (Software tools)

- เป็นสิ่งที่เอาไว้สร้างหรือควบคุมโปรแกรมอื่น อารมณ์แบบ Unity ที่เอาไว้สร้างเกมอะ

## Definition of Software

- Instructions (Computer program) that when executed provided desired feature, function, and performance

- เป็นชุดคำสั่งที่เมื่อทำงานจะให้ผลลัพธ์และประสิทธิภาพตามที่ต้องการ

- Data Structure that enables the programs to adequately manipulate information

- เป็นโครงสร้างข้อมูลที่จะช่วยให้โปรแกรมสามารถจัดการข้อมูลได้อย่างเพียงพอ

- Descriptive information in both hard copy and virtual forms that describe the operation and use of the programs

- เป็นข้อมูลเชิงบรรยาย ที่อยู่ในรูปแบบเอกสารและแบบเสมือน เอาไว้อธิบายการทำงานและการใช้งานโปรแกรม (อารมณ์แบบคู่มือ) 

- Descriptive information can be the comment for explain each line of code in the code file too.

- Comment in code more useful in term of helping in reviewing the code and also remind the thing that you think during code.

## Software VS Hareware

Failure Rate: Software doesn't wear out, it deteriorates
โอกาสในการเกิดความล้มเหลวผิดพลาด: ซอฟต์แวร์จะไม่มีการเสื่อมสภาพแบบพัง แต่สามารถตกรุ่นได้ ต่างกับ ฮาร์ดแวร์ที่อาจเกิดความเสียหายได้ง่ายกว่า

Deteriorates -> Out of date -> Provide lower value than before.

Maintenance: When a hardware component wear out, it is replaced by a spare part. There are no software spare part. Software failure indicates an error in design or in the process through which design was translated into machine executable code

Maintenance ของ Software จะไม่ใช้อะไหล่ซ่อม แต่จะเปลี่ยนเวอร์ชันของ Software อาจจะเป็นการ Bug Fix, หรือ Patch ให้ Versioning เพิ่มขึ้น (Change Code)

การบำรุงรักษา: ถ้าฮาร์ดแวร์พัง ยังมีอะไหล่ซ่อม แต่ถ้าเป็นซอฟต์แวร์จะไม่มีอะไหล่ซ่อม แต่ความผิดพลาดของซอฟต์แวร์จะเกิดจากการออกแบบ หรือกระบวนการที่จะเปลี่ยนสิ่งที่ออกแบบเป็นโค้ดคำสั่งที่คอมเข้าใจ

## Software Application Domain

ขอบเขตของซอฟต์แวร์

1) System software ซอฟต์แวร์ระบบ พวก compiler, editors, OS, driver, network software ต่าง ๆ ที่เกี่ยวกับตัวระบบเครื่อง

2) Application Software ซอฟต์แวร์สำหรับการใช้งานตามวัตถุประสงค์ต่าง ๆ เช่น Safari, Apple music, MS Team

3) Engineering/Scientific Software เป็นซอฟต์แวร์เฉพาะด้านที่ใช้สำหรับงานทางด้านวิทยาศาสตร์และวิศวกรรมศาสตร์

4) Embedded Software ซอฟต์แวร์แบบฝัง ใช้สำหรับการฝังซอฟต์แวร์ลงไปใน ฮาร์ดแวร์ต่าง ๆ เช่น โปรแกรมในเครื่องใช้ไฟฟ้า ,IOT เป็นต้น

5) Product-line software เป็นซอฟต์แวร์ที่ใช้ได้ในลูกค้าหลายกลุ่ม เช่น โปรแกรมควบคุมสต็อกสินค้า, โปรแกรมแคชเชียร์ POS

6) Web/Mobile Application 

7) Artificial Intelligence software เป็นการเอา AI เข้ามาใช้ในงานของ software เช่น หุ่นยนต์ (Robotics), Face recognition, pattern recognition, prediction, machine learning ต่าง ๆ

One software can play more than 1 role that they have characteristic of those role.

## Legacy Software
ซอฟต์แวร์เก่า

### Why must it change ? ทำไมต้องเปลี่ยน

- Adapted to meet the needs of new computing environment or technology
- ปรับให้เข้ากับความต้องการของสภาพแวดล้อมและเทคโนโลยีปัจจุบัน

- Enhanced to implement new business requirement 
- ปรับปรุงให้ตรงตามความต้องการทางธุรกิจในปัจจุบัน

- Extended to make it interoperable with other more modern systems or databases.
- ขยายเพื่อให้สามารถทำงานร่วมกับระบบและฐานข้อมูลที่ใหม่กว่าได้ (บางระบบ/ฐานข้อมูลอาจไม่รองรับระบบเก่า ๆ)

- Re-architected to make it viable within an evolving computing environment
- ออกแบบใหม่ให้เข้ากับสภาพแวดล้อมที่กำลังพัฒนา

## Defining the Discipline ข้อกำหนด

[IEEE] Software Engineering:

The application of a systematics, disciplined, quantifiable, approach to the development, operation, and maintenance of software; this is the application of engineering to software.

Systematics -> Replicate,Repeated mean do it again

Factory (Manufacturing, Mass product)

Behind the word engineering it focus on systematics, disciplined, quantifiable concept 

System Engineering is the procress that work in the way of engineering approach to your creative work

การประยุกต์ใช้แนวทางที่เป็นระบบสำหรับการพัฒนาจัดการและบำรุงรักษาซอฟต์แวร์

Different from Art which is no reason and use only the emotion.
(Most of the time)

Why use Software Engineering
Because Want to deliver that software that high quality every or most of time.

Software Engineering => Process 

Process -> the way that help you to deliver high quality software

Different project may have different fitted process because each project have different context/characteristic.

ไม่มีอันไหนดีที่สุด มีแต่สิ่งที่เหมาะสมที่สุด

Use systematic to make decision to choosing the process.

Not only discipline we also need adaptability and agility.

Every Process lead to the same target which is the quality.

The foundation of software engineering is the process layer 

จุดเริ่มต้นของวิศวกรรมซอฟต์แวร์เริ่มที่ ชั้น Process

The software process forms the basis or management control of software projects and establishes the context in which technical methods are applied, work products are produced, milestones are established, qualify is ensured, and change is properly managed.

ชั้น Process ของซอฟต์แวร์จะก่อให้เกิดพื้นฐานในการควบคุมของโปรเจคจะกำหนดบริบทในเชิงที่ใช้วิธีทางเทคนิค, ผลิตภัณฑ์ถูกสร้างขึ้น, มีการสร้างเหตุการณ์ที่สำคัญ, มีการยืนยันคุณภาพ และมีการปรับเปลี่ยนที่ถูกควบคุมอย่างเหมาะสม

Software engineering method provide the technical how-to for building software

Method layer ของวิศวกรรมซอฟต์แวร์ ทำให้เกิดลำดับขั้นของการสร้างซอฟต์แวร์

Software engineering tools provide automated or semi-automated for the process and the methods.

Tools Layer ของวิศวกรรมซอฟต์แวร์ทำให้เกิดการทำงานอัตโนมัติหรือกึ่งอัตโนมัติแก่ Process layer และ Methods Layer

A quality focus


Process -> SDLC Planning,Requirement,design,Analysis/ WaterFall

Methods -> Describe how to planning, how to get requierment and analyze requirement, how to make a good design

Tools -> Editor (IDE), Design App, Diagram drawer, Better software that help you work.

