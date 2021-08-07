print("Damilare Olasope,", "olasopedamilare3327@gmail.com,", "@Damilare,", "Proteomics,", "@Damilary,")


def hamming_distance(s1,s2):
  count = 0
  
  for i in range(len(s1)):
    if s1[i] != s2[i]:
      count += 1 
      return count


print(hamming_distance("@damilare","@damilary"))