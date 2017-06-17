class ItalianIpa

	def initialize(word)
		@word = word
	end

	def syllables
		if @word[/([aeiou][aeiou])/]
			@word.split(/(?<=[aeiou][aeiou])/)
		elsif @word[/([^aeiou][^aeiou][^aeiou])/]
			@word.split(/(?<=[^aeiou])/)
		# elsif @word[/([lmnrt][lmnrt])/]
		# 	@word.split(/(?<=[lmnr])/i)
		# elsif @word[/([aeiou][rs])/i]
		# 	@word.split(/(?<=[aeiou][rts])/i)
		end
	end
end

# italian = ItalianIpa.new('furtiva')
# puts italian.syllables

# italian2 = ItalianIpa.new('sostenuto')
# puts italian2.syllables

# italian3 = ItalianIpa.new('sventurata')
# puts italian3.syllables

# italian4 = ItalianIpa.new('insiem')
# puts italian3.syllables

italian5 = ItalianIpa.new('sempre')
puts italian5.syllables