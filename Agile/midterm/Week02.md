# Software Engineering

## The software Process

A process is a collection of activities, action, and tasks that are performed when some work product is to be created.

เป็นชุดของกิจกรรมกระบวนการต่าง ๆ ที่ถูกกระทำขึ้นเมื่อจะสร้าง ผลิตภัณฑ์ใหม่ ๆ

An activity strives to achieve a broad objective and is applied regardless of the application domain, size of the project, complexity of the effort, or degree of rigour with which software engineering is to be applied.

กิจกรรมมุ่งไปสู่วัตถุประสงค์และนำไปใช้งานโดยไม่คำนึงถึงขอบเขตของแอปพลิเคชันและขนาดของโปรเจค ความซับซ้อนของความพยายาม 

An action encompasses a set of tasks that produce a major work product

การกระทำเป็นกลุ่มของงานที่ทำเพื่อให้งานหลักเกินขึ้น

A task focuses on a small, but well-defined objective.

งานที่จะสนใจในสิ่งที่มีขนาดเล็กแต่มีวัตถุประสงค์ชัดเจน

Ex.
Process: Study Online
Activity: Question during learning
 
A process is not a rigid prescription for how to build computer software.

กระบวนการไม่ใส่สิ่งที่บังคับว่าต้องทำแบบนี้ถึงจะเป็นการสร้าง Software

It is an adaptable approach that enables the people doing the work to pick and choose the appropriate set of work actions and tasks.

มันเป็นสิ่งที่ปรับเปลี่ยนได้ที่จะช่วยให้คนสามารถทำงานได้อย่างเหมาะสมและมีประสิทธิภาพ

The intent is always to deliver software in a timely manner and with sufficient quality to satisfy those who have sponsored it creation and those who will use it.

มีเจตนาคือการส่งมอบซอฟต์แวร์ภายใต้ขอบเขตเวลาและมีประสิทธิภาพที่จะทำให้ผู้ที่มีส่วนร่วมในการสร้างหรือผู้ใช้งานพึงพอใจ

Quality - value > Feeling/satisfaction , get something done, get what they want

ประสิทธิภาพเกิดจากคุณค่าซึ่งคือความรู้สึก การได้สิ่งที่ต้องการ

Quality may describe by good for you

กล่าวอีกอย่างคือ คุณภาพคือสิ่งที่ดีต่อผู้ใช้

Time is also the part of quality. (Should not be launching late)

เวลาก็เป็นส่วนหนึ่งของคุณภาพ 

Something your software cannot be sold because the stakeholder have the 
pain from your software (e.g. too expensive)

บางครั้งซอฟต์แวร์ก็อาจขายไม่ได้เพราะ stakeholder ไม่พอใจ

High Quality Software -> The software that good enough for satisfy the end user and the stakeholder and they happy to buy it.

Software คุณภาพสูงคือ ดีพอที่จะทำให้ผู้ใช้และผู้เกี่ยวข้องพึงพอใจและเต็มใจที่จะซื้อมัน

In real world we not seperate 4 component of process clearly. 

โดยปกติเราจะไม่แยก 4 อย่างนี้อย่างชัดเจน

## The Process Framework

A **process framework** establishes the foundation for a complete software engineering process by identifying a small number of **framework activities** that are applicable to all software projects, regardless of their size or complexity.

Process Framwork สร้างรากฐานสำหรับการทำ Software Engineering ให้สำเร็จโดย ระบุเป็น Framework Activity ขนาดเล็กจำนวนมากซึ่งจะใช้ได้กับทุก Software Project โดยไม่คำนึงถึงขนาดและความซับซ้อน

In addition, the process framework encompasses a set of umbrella activities that are applicable across the entire software process.

นอกจากนี้ Process Framework ยังรวมชุดของ Umbralla Activity ซึ่งสามารถใช้ได้กับกระบวนการซอฟต์แวร์ทั้งหมด

A generic process framework for software engineering encompasses five activities:

Process Framework ทั่วไปมี 5 กิจกรรม

**Communication**: communicate and collaborate with the customer (and other stakeholders) to understand stakeholders’ objectives for the project and to gather requirements that help define software features and functions

การสื่อสาร : การสื่อสารและร่วมมือกับผู้ใช้และผู้มีส่วนได้เสีย เพื่อให้เข้าใจวัตถุประสงค์ของผู้ใช้เกี่ยวกับการเก็บ requirement ต่างๆ ที่จะช่วยในการระบุ Feature และFunction ของ Software

Planning: define the software engineering work by describing the technical tasks to be conducted, the risks that are likely, the resources that will be required, the work products to be produced, and a work schedule.

Planning the project (Minimum work to do) (What you are going to do?)

การวางแผน เป็นการระบุงานของ Software Engineering โดยอธิบายงานทาง technical ที่ต้องทำ ความเสี่ยงที่อาจจะเกิด ทรัพยากรที่ต้องการ สิ่งที่จะสร้างและกำหนดเวลา

Modelling: create models to better understand software requirements and the design that will achieve those requirements.

SDLC

Analysis Model => Simple ER Diagram -> What data store (relationship between data)
Design Model => ER (Better & Fully) -> How you are going to store data in database (More specific)

สร้าง Model ให้เข้าใจความต้องการและ Design เองก็ต้องตอบสนองความต้องการได้

Construction: combine code generation and the testing that is required to uncover errors in the code.

Construction: เอาโค้ดมาสร้างและเทสเพื่อป้องกัน error

Coding & Testing

Deployment

Prepare system for ready to user and Prepare user for able to use

Deployment : การนำผลงานไปใช้จริง ๆ

For many software projects, framework activities are applied iteratively as a project progresses.

สำหรับ หลายๆ โปรเจค Framework Activity ถูกนำไปใช้ซ้ำ ๆ อยู่เสมอ 

Process Flow

How to put the basic block together to sequence form the process ?

- Linear Process Flow เป็นทางเดียว (Water Fall)
- Iterative Process Flow มีการวนซ้ำ (Water Fall that can go back => Modify Water Fall)
- Evolution Process Flow เหมือนเข้ามาเพื่อพัฒนาแล้วก็ออกไป (Run Many Time Each round get some/part of system and can use now => Agile)
- Parallel Process Flow มีการทำหลายอย่างในเวลาเดียวกัน (Can start drawing model through not get all requirement)

- Process Flow can mix together Ex. Parallel process flow with Evolution Process Flow

Plan/Modelling/Design should happen for sum degree (Have the picture in your head but we encourage to draw to be picture => have clear understand, correct and communicate with people)

Each iteration produces a software increment that provides stakeholders with a subset of overall software features and functionality.

การทำซ้ำแต่ละครั้งจะก่อให้เกิดการเพิ่มซอฟต์แวร์ที่ให้ผู้มีส่วนได้เสียได้ทดลองกับ Feature ขนาดเล็ก ๆ

### Umbrelly Activity

To ensure the quality of program ontime and fit in budget.

Software engineering process framework activities are complemented by a number of umbrella activities.

Software engineering process framework activities มีการเสริมด้วย Umbrella activity จำนวนมาก

In general, umbrella activities are applied throughout a software project and help a software team manage and control progress, quality, change, and risk.

โดยทั่วไป Umbrella Activity ถูกนำมาใช้ตลอดทั้งโครงการ และช่วยให้ทีมสามารถจัดการควบคุมกระบวนการคุณภาพและความเสี่ยงได้

ถ้ารู้ว่าเริ่มหลุดจาก Schedule จะต้องทำอะไรก็ได้เพื่อให้กลับมาอยู่ในSchedule อีกครั้ง และ product มี quality

Change management (When user want to change requirement : Who decision)

Although you use Agile but it don't mean you can change all to meet user need. (Agile not tell you)

Risk -> Problem thst might occur in the future (How you prevent, What you can do if it happen)

Typical umbrella activities:

Software project tracking and control – assess progress against plan

การติดตามและควบคุมโปรเจค

Risk management – assess risks that may affect outcome of project or quality of product

การจัดการความเสี่ยง

Prevent Project to be late and plan what to do with it.

Software quality assurance (SQA)– define and conduct activities to ensure software quality

การประกันคุณภาพ พูดเกี่ยวกับ Process ถ้าอยากได้ Good Product ต้องมี Good Process เพื่อจะ สร้าง Product.

Good Requirement also help to get High quality Software

Process => Planning, Analysis, Design, Implement

Good Requirement > Good Design > Good Product

ไม่ควร Launch Software ตอนไม่มี Problem เพราะมันเป็นไปไม่ได้ ควร Launch ตอนที่ มี problem แต่สิ่งที่ตามมาคือ When and Why ทำให้มีการที่จะต้องทำการ Decision Making (Good Enough / No more time, no more cost)

Technical reviews – uncover and remove errors in work products

การตรวจสอบเชิงเทคนิค

Measurement – to meet stakeholders’ needs

การวัดผล

Software configuration management – manage effects of change

การจัดการการกำหนดค่า ทำให้สามารถทำงานร่วมกับผู้อื่นได้ง่ายขึ้น  เช่น Good Communication & Version Control Tool

Reusability management – define criteria for work product reuse and establish mechanisms to achieve reusable components

การจัดการการนำมาใช้ใหม่

Design Component for working to reuse that code again.

Work product preparation and production – activities to create work products

การเตรียมผลิตภัณฑ์

Design document also include in work product preparation

### Process Adaptation

Overall flow of activities, actions, and tasks and the interdependencies among them.

ทุกกิจกรรมเป็นอิสระต่อกัน

Degree to which actions and tasks are defined within each framework activity.

ลำดับการกระทำถูกกำหนดในแต่ละกิจกรรมของ Framework Activity

Degree to which work products are identified and required.

จำเป็นที่ต้องระบุ  Degree สำหรับ work products และต้องเป็นเอกลักษณ์​ (Unique)

Manner in which quality assurance activities are applied.

มีการประกันคุณภาพ

Manner in which project tracking and control activities are applied.

มีการควบคุมการดำเนินงาน

Overall degree of detail and rigour with which the process is described.

ทุกระดับของการกระทำถูกอธิบาย

Degree to which the customer and other stakeholders are involved with the project.

ลูกค้าและผู้มีส่วนร่วม เกี่ยวข้องกับโปรเจค

Level of autonomy given to the software team.

มีความเป็นอิสระ

Degree to which team organisation and roles are prescribed.

มีการกำหนดผู้รับผิดชอบ

## Software  Engineering Practice

The essence of software engineering pratice

### Understand Problem

การเข้าใจปัญหาว่าใครมีส่วนได้เสียบ้าง อะไรที่ไม่รู้ อะไรคือข้อมูล อะไรที่จำเป็น ปัญหาสามารถแบ่งให้เล็กลงได้มั้ย สามารถ visualize เป็นกราฟฟิคได้ไหม

### Plan Solution

วางแผนวิธีแก้ปัญหา คิดไปว่าเคยเห็นปัญหาแนวนี้ไหม ปัญหาย่อยแก้ได้ไหม อะไรยังไง

### Carry out the Plan

ดำเนิน Solution ที่คิดมา

### Examine the result

ดูผลลัพธ์จาก Solution

## General Principle

### The first principle: The Reason It All Exists

หลักการแรก: ทุกอย่างมีเหตุผล

A software system exists for one reason: to provide value to its users.

ระบบซอฟต์แวร์มีอยู่ด้วยเหตุผลเดียว: เพื่อให้คุณค่าแก่ผู้ใช้

All decisions should be made with this in mind.

การตัดสินใจทั้งหมดควรคำนึงถึงสิ่งนี้เป็นหลัก

###  The second principle: KISS (Keep It Simple, Stupid!)

All design should be as simple as possible, but no simpler.

การออกแบบทั้งหมดควรเรียบง่ายที่สุด แต่ไม่ง่ายเกินไป

This facilitates having a more easily understood and easily maintained system.

สิ่งนี้ช่วยให้มีระบบที่เข้าใจง่ายและดูแลรักษาได้ง่ายขึ้น 

### The third principle: Maintain the Vision

หลักการที่สาม: รักษาวิสัยทัศน์

A clear vision is essential to the success of a software project.

วิสัยทัศน์ที่ชัดเจนมีความสำคัญต่อความสำเร็จของโครงการซอฟต์แวร์ 

### The fourth principle: What You Produce, Others Will Consume

หลักการที่สี่: สิ่งที่คุณผลิตคนอื่นจะบริโภค

Always specify, design, and implement knowing someone else will have to understand what you are doing.

การออกแบบและนำไปใช้ควรรู้จักคนอื่นจะต้องเข้าใจในสิ่งที่คุณกำลังทำอยู่เสมอ
ประมาณว่าทำเองแต่ไม่ได้ใช้เองนะ ให้คิดถึงคนอื่นด้วย

### The fifth principle: Be Open to the Future

หลักการที่ห้า: เปิดใจสู่อนาคต

Be ready to adapt to changes.

พร้อมที่จะปรับตัวกับการเปลี่ยนแปลง

Systems that do this successfully are those that have been designed this way from the start.

ระบบที่ทำได้สำเร็จคือระบบที่ได้รับการออกแบบมาตั้งแต่เริ่มต้น 

### The sixth principle: Plan Ahead for Reuse

หลักการที่หก: วางแผนล่วงหน้าเพื่อนำกลับมาใช้ใหม่

Reuse saves time and effort.

การใช้ซ้ำช่วยประหยัดเวลาและความพยายาม

Planning ahead for reuse reduces the cost and increase the value of both the reusable components and the systems into which they are incorporated.

การวางแผนล่วงหน้าเพื่อนำกลับมาใช้ใหม่จะช่วยลดต้นทุนและเพิ่มมูลค่าของทั้งที่ใช้ซ้ำได้ส่วนประกอบและระบบที่รวมเข้าด้วยกัน 

### The seventh principle: Think!

หลักการที่เจ็ด: คิด!

Placing clear, complete thought before action almost always produces better results.

การวางความคิดที่ชัดเจนครบถ้วนก่อนลงมือทำมักให้ผลลัพธ์ที่ดีกว่า

When clear thought has gone into a system, value comes out.

เมื่อความคิดที่ชัดเจนเข้าสู่ระบบคุณค่าก็จะออกมา 