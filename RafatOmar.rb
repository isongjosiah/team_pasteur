#!/usr/bin/env ruby
name = "Rafat Omar, "
email = "rafat.0mar@outlook.com, "
slack = "@RafatOmar, "
biostack = "Genomics, "
twitter='@rafat0mar, '

#function to calculate hamming distance

class Hamming

  # Computes the hamming distance between two strings.
    # Return <code>nil</code> for invalid parameters.
      def self.compute(word1, word2)
	      #checks if strings are empty
      	return if (word1.empty? or word2.empty?)
	      #turns words to lowercase
      	word1 = word1.downcase 
        word2 = word2.downcase
	      #initialise count
      	hd   = 0
	
	#iterates through each letter and counts
	# whenever there isnt a match
	word1.length.times do |index|
		if (word1[index] != word2[index])
			hd += 1
	 	end
      	end

  	hd
      end 
end

	

hamming_dist = Hamming.compute(slack,twitter)
puts name + email + slack + biostack + twitter + hamming_dist.to_s



