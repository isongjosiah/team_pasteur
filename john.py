print("John Njogu," , "jnnjogu6@gmail.com,","@Johny,","Transcriptomics,","@johny")

def Hdist(s1,s2):
    count=0
    l = len(s1)
    for i in range (l):
        if s1[i] != s2[i]:
            count+=1
    print("The hamming distance is equal to: ", count)
    return count

Hdist("@johny", "@Johny")
