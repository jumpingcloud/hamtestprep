#!/usr/bin/python2.7
#
# this will be a complete rewrite of hamtestprep in pythion 2.x

f = open('dos2unix.out', 'r')
file = f.readlines()
questionid = ["",]
qnum = 0
for n in range(0,2816):
        if file[n] == "~~\n":
                questionid[qnum:] = [file[n-6][0:5]]
                qnum = qnum + 1
                print questionid[qnum -1]

#import re
#re.findall(r'\AT[1-9][A-Z][0-9][0-9]',file[22])