def hamming_distance(slack, twitter):
    hd = 0
    max_length =max(len(slack), len(twitter))

    for i in range(max_length):
        if (slack[i] != twitter [i]): 
            hd += 1

    return hd


# Driver code
slack = @AbolanleSh
twitter = @Bolleavean
name = Olajide Shukurah Abolanle
email = shukuraholajide@gmail.com
biostack = genomics


print('name, email, biostack, slack, twitter, hamming_distance(slack, twitter), sep="')

