Name= ('ogunlade ayodele')
Email= ('ogunladeayodele.t@gmail.com')
Slackname= ('Ayox')
Biostack= ('Data Science')
Twitter= ('Yoxblog')

def hamming_distance(s1,s2):
    count = 0

    for i in range(len(s1)):
        if s1[i] != s2[i]:
            count += 1
    return count

print(hamming_distance('Ayox','yoxblog'))

print(Name, Email, Slackname, Biostack, Twitter, hamming_distance)
