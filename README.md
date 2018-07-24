# Bot Saves Princess & Bot Saves Princess 2

Solution to [Bot Saves the Princess](https://www.hackerrank.com/challenges/saveprincess)
and [Bot Saves the Princess 2](https://www.hackerrank.com/challenges/saveprincess) on HackerRank.

See the links to learn more about the problem.

## Getting Started

Clone down this repository and change into the directory:

```
git clone 
cd save_princess
```
#### To play Bot Saves the Princess 1:

run the file:

```
ruby bot_saves_princess.rb
```
Enter the grid size and each row of the grid using the following format:

_Input format_

The first line contains an odd integer N (3 <= N < 100) denoting the size of the grid. This is followed by an NxN grid. Each cell is denoted by '-' (ascii value: 45). The bot position is denoted by 'm' and the princess position is denoted by 'p'.

_Sample input_

```
3
---
-m-
p--
```

#### To play Bot Saves the Princess 2:

run the file:

```
ruby bot_saves_princess_2.rb
```

Enter the grid size, coordinates of the bot, and each row of the grid using the following format:

_Input Format_

The first line of the input is N (<100), the size of the board (NxN). The second line of the input contains two space separated integers, which is the position of the bot.

The position of the princess is indicated by the character 'p' and the position of the bot is indicated by the character 'm' and each cell is denoted by '-' (ascii value: 45).

_Sample Input_

```
5
2 3
-----
-----
p--m-
-----
-----
```

## Written In

Ruby 2.4

## Run the tests

```
rake test
```
Code is tested with [Minitest](https://github.com/seattlerb/minitest)




