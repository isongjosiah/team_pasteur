name= ("John Njogu,")
email = ("jnnjogu6@gmail.com,")
slack_username = ("@Johny,")
biostack = ("Transcriptomics,")
twitter_handle = ("@johny,")
print(name, email, slack_username, biostack, twitter_handle)

def Hamming_distance(s1,s2):
    count=0
    l = len(s1)
    for i in range (l):
        if s1[i] != s2[i]:
            count+=1
    #print(count)
    return count

Hamming_distance(slack_username , twitter_handle)
