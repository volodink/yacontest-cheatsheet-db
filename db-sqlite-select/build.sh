#!/bin/sh
if [ ! -f solution.py ]; then mv $filename student_solution.sql || true; fi
rm -rf __pycache__
#/usr/bin/python3 check.py
