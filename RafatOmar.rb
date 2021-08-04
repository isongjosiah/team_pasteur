#!/usr/bin/env ruby
name = "Rafat Omar "
email = "rafat.0mar@outlook.com "
slack = "@RafatOmar  "
biostack = "Genomics "
twitter='@rafat0mar '

#function to calculate hamming distance

class Hamming

  # Computes the hamming distance between two strings.
    # Return <code>nil</code> for invalid parameters.
      def self.compute(word1, word2)
      	return if (word1.nil? or word2.nil?)
      	word1 = word1.downcase 
        word2 = word2.downcase
      	hd   = 0
	shortest = [word1, word2].min_by(&:length)

	shortest.length.times do |index|
		if (word1[index] != word2[index])
			hd += 1
	 	end
      	end

  	hd
      end 
end

	

hamming_dist = Hamming.compute(slack,twitter)
puts name + email + slack + biostack + twitter + hamming_dist.to_s



