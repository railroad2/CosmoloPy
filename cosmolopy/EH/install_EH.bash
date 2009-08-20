#!/bin/bash

# All of this should be taken care of by setup.py now.
swig -python power.i
gcc -I/usr/include/python2.6/ -c power.c power_wrap.c 
ld -shared power.o power_wrap.o -o _power.so