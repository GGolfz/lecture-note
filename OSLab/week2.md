# Week 2

vi is text editor for UNIX/linux
i	# switch to input mode
esc	# switch to command mode
:w	# write content to current file
:w f1	# write content to file named f1
dd	# delete line
ndd	# delete n line (from current)
u	# undo
.	# redo
hjkl	# move left, down, up, right
x	# delete current characte
nx	# delete n forward character
J	# move the next line up, delete the new line (dielete \n)
:wq	# save and exit
ZZ	# write and exit
:q	# quit with saving
:q!	# quit without saving
n1,n2 m n3	# move lines between line n1 and n2 and place it after line n3
n1,n2 t n3	# copy lines between line n1 and n2 and place it after line n3
man _	# manual specific command
man ls	# manual of ls command
.	# current line
.+n	# current line + n line
$	# last line/ last position of line
:set nu # show line number
:set nonu	# not show line number
:/p1/	# search pattern p1 forward
:?p1	# search pattern p1 backward
:n1, n2 s /p1/p2	# replace p1 with p2 from line n1 to n2
:n1, n2 s /p1/p2/g	# replace all match p1 with p2 from line n1 to n2
:n1, n2 d	# delete line n1 to line n2
