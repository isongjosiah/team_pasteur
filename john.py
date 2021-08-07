name= ("John Njogu")
email = ("jnnjogu6@gmail.com")
slack = ("@Johny")
biostacks = ("Transcriptomics")
twit = ("@johny")
print(name, email, slack, biostacks, twit)

def Hdist(s1,s2):
    count=0
    l = len(s1)
    for i in range (l):
        if s1[i] != s2[i]:
            count+=1
    print(count)
    return count

Hdist(slack , twit)
