# Week 4

```sh
grep <word> <file> : # Find word in file
grep -c <word> <file> : # Show count of word in the file
grep -n <word> <file> : # Show line number of word in file
wc <filename> : # Show line, word, character in the file
sort <filename> : # sort file by lines (Alphabetical)
head -n <num> <filename> : # Show top num line
tail -n <num> <filename> : # Show last num line
| : # Send output of current to next program
echo <text> : # print text
&& : # When finish continue next program withour pipe
```

Exercise 1
Put top 3 lines of katakfile into a new file called katak3

```sh
head -n 3 katakfile > katak3
```

Exercise 2
Search the word katak and put in a file named katakWord

```sh
grep Katak katakfile > katakWord
```

Exercise 3
Search the word love and append the searching resuult into katakWord. Also show the line number containing woird love.

```sh
grep -n love katakfile >> katakWord 
```

Exercise 4
Execute sum.out file and keep only input into answer file
```sh
./sum.out | tail -n 2  > answer
```

Exercise 5 Show last occurance of printf in sum.c and store in lastPrintf file

```sh
grep printf sum.c | tail -n 1 > lastPrintf
```

Exercise 6 Show line 6-8 of katakfile
```sh
head -n 8 katakfile  | tail -n 3
```

Exercise 7
Show the third Katak line
```sh
grep Katak katakfile | head -n 3 | tail -n 1
```

Exercise 8
Sum all numbers from data file and put result in a file name answer3 
```sh
./sum.out < data | tail -n 2 > answer3
```

Exercise 9 
Sum number in the data file and add the result summation into file answer5. Do not put average into the file.
```sh
./sum.out < data | tail -n 2 | head -n 1 > answer3
```
or
```sh
./sum.out < data | grep Summation > answer5
```

Exercise 10
Sum the first 3 line 
```sh
head -n 3 data > temp && echo "-1" >> temp && ./sum.out < temp | tail -n 2 && rm temp
```

Exercise 11
show file that update around 18:00 

```sh
ls -l | grep 18: 
```