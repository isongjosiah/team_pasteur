#function to calculate Hamming distance 

def hammingDist (twitter, slack_Username):
    count = 0
    max_lenght = max(len(twitter), len(slack_Username))

    for i in range(max_lenght):
        if(twitter[i] != slack_Username[i]):
            count =+1
        return count 


#driver code
name = 'Olusola AKINSOOLA'
email = 'akinsolaolusola74@gmail.com'
slack_Username = '@Sola'
biostack = 'Genomics'
twitter = 'olusolaAKINSOL1'
hamming_Dist = hammingDist(twitter, slack_Username)


#function call
print (name, email, slack_Username, biostack, hamming_Dist)
