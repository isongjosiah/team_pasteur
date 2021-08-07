#!/usr/bin/python3

name = ('Samuel Adedayo')
email = ('Samueladedayoyemi@gmail.com')
slack_username = ('@Sadeyemi')
biostack = ('Genomics')
twitter_handle = ('@Yemisamx')

def h_d(str1, str2):
    distance = 0
    L = len(str1)
    for i in range(L):
        if str1[i] != str2[i]:
            distance += 1
    return distance

hamming_distance = h_d(slack_username, twitter_handle)

print(name, email, slack_username, biostack, twitter_handle, hamming_distance)
