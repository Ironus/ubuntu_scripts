#!/usr/bin/python3
# -*- coding: utf-8 -*-

#dateParser.py
#author: Konrad "Ironus" Zierek
#contact: konzie@st.amu.edu.pl

"""
Date Parser
Simple script to parse date from bash cmd `date` into standarised form.

author: Konrad "Ironus" Zierek
website: github.com/Ironus
last edited: April 2016
"""

from sys import stdin
from datetime import datetime, date, time

date_string = str(input())
try:
	print(date_string)
	print(datetime.strptime(date_string, "%d %b %Y").strftime("%d/%m/%Y"))
except ValueError:
	print("Invalid date was given.")
