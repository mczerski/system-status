#!/usr/bin/env bash

echo cpu_freq
cpu_freq
echo free
free -m
echo df
df -h
echo uptime
uptime
echo top 5 cpu consuming processes
ps -eo pcpu,pmem,pid,ppid,user,stat,args | sort -k 1 -r | head -6|sed 's/$/\n/'
echo top 5 memory consuming processes
ps -eo pmem,pcpu,pid,ppid,user,stat,args | sort -k 1 -r | head -6|sed 's/$/\n/'
