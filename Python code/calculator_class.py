# -*- coding: utf-8 -*-
"""
Created on Sat Jun  5 09:53:06 2021

@author: Piyush
"""

class calculator():
    #def __init__(self,no1,no2):
    #    self.no1 = no1
    #    self.no2 = no2
    #    #self.ops = ops
    
    #add
    def add(self):
        return no1 + no2
    
    #sub
    def sub(self):
        return no1 - no2
    #mul
    def mul(self):
        return no1 * no2
     #div
    def div(self):
        return no1 * no2
    
    
    
cal = calculator()

choice = 0
while choice != 1:
    print("select opeartion")
    print("1. add")
    print("2. sub")
    print("3. mul")
    print("4. div")
    
    choice = input("enter choice 1/2/3/4")
    
    if choice in ('1','2','3','4'):
        no1 = float(input("enter first no"))
        no2 = float(input("enter second no"))
            
            
    if choice == '1':
        print(cal.add())
    elif choice == '2':
        print(cal.sub())
    elif choice == '3':
        print(cal.mul())
    elif choice == '4':
        print(cal.div())    
    else:
        print("invalid input")


        
        