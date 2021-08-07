#!/usr/bin/python3

name = 'Priyanka Pandit'
email = 'priyupandit99@gmail.com'
slack_username = '@PriyankaPandit'
biostack = 'Drug Development'
twitter_handle = '@PiiiyuuuPandit'

def h_d(string1, string2): 
    # Start with a distance of zero, and count up
    distance = 0
    # Loop over the indices of the string
    L = len(string1)
    for i in range(L):
        # Add 1 to the distance if these two characters are not equal
        if string1[i] != string2[i]:
            distance += 1
    # Return the final count of differences
    return distance

hamming_distance = h_d(slack_username, twitter_handle)

print(name, email ,slack_username, biostack, twitter_handle, hamming_distance, sep=",")
