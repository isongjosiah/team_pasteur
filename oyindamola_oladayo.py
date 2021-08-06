def compute_hd(slack, twitter):
    count = 0
    max_length = 0

    if (len(slack) > len(twitter)):
        max_length = len(slack)
    else:
        max_length = len(twitter)

    for i in range(max_length):
        if (twitter[i] != slack[i]):
            count += 1
    return count


print(f'Oyindamola oladayo, oyindamolaoladayo@gmail.com,@oyin22, drug develpment, @oyin.o, {compute_hd("oyin22", "oyin.o")}')
