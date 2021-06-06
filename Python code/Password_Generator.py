# -*- coding: utf-8 -*-
"""
Created on Sun Jun  6 07:12:07 2021

@author: Piyush
"""


class password_genrator():
    import random
    import array

    max_len = 8

    DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'] 

    LOWER_CHARACTERS = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
                     'i', 'j', 'k', 'm', 'n', 'o', 'p', 'q',
                     'r', 's', 't', 'u', 'v', 'w', 'x', 'y',
                     'z']
 
    UPCASE_CHARACTERS = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                     'I', 'J', 'K', 'M', 'N', 'O', 'p', 'Q',
                     'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y',
                     'Z']
 
    SYMBOLS = ['@','_']


    PASSWORD_LIST = DIGITS + UPCASE_CHARACTERS + LOWER_CHARACTERS + SYMBOLS


    rand_digits = random.choice(DIGITS)

    rand_upper = random.choice(UPCASE_CHARACTERS)
    rand_lower = random.choice(LOWER_CHARACTERS)
    rand_sym = random.choice(SYMBOLS)


    temp_pass = rand_digits + rand_upper + rand_lower + rand_sym

    for x in range(max_len-4):
        temp_pass = temp_pass + random.choice(PASSWORD_LIST)
        temp_pass_list = array.array('u',temp_pass)
        random.shuffle(temp_pass_list)
    
    print("PASSWORD GENERATOR")

    password = ""
    for x in temp_pass_list:
        password = password + x
         
    # print out password
    print(password)