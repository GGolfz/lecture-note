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
