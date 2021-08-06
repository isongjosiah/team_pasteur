# Function to calculate
# Hamming distance


def hammingDist(Twitter, Slack):
	count = 0
	max_length = max(len(Twitter), len(Slack))

	for i in range(max_length):
		if(Twitter[i] != Slack[i]):
			count += 1
	return count


# Driver code
Twitter = "@Kanuxv"
Slack = "@Xavier"

name = ("Xavier Victor Kanu")
email = ("kanuxavier@gmail.com")
slack_username = ("@Xavier")
biostack = ("Data Science")
twitter = ("@kanudxv")
hamming_distance = hammingDist(Twitter, Slack)

# function call
print(name, email, slack_username, biostack,
      twitter, hamming_distance, sep=",")
