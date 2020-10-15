#!/usr/bin/bash
#level0
ssh -p 2220 bandit0@bandit.labs.overthewire.org 
#password is bandit0

#level1
cat './-'
#level2
cat './spaces in this filename'
#level3
ls -al inhere/ | cat inhere/.hidden
#level4
file ./* | cat './-file07'
#level5
find . -size 1033c | cat './inhere/maybehere07/.file2'
#level6
find  / -user bandit7 -group bandit6 -size 33c 2> /dev/null
cat /var/lib/dpkg/info/bandit7.password
