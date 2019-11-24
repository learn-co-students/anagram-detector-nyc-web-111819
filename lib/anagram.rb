# Your code goes here!
require 'pry'
class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        array.select do |x| x.split("").sort == @word.split("").sort end
        # splitarray = wordlist.map do |word| word.split 
        # end
        # sortedarray = splitarray.map do |element| element.sort end
        # sortedarray.select do |element| element == wordlist end
        

    end

end
binding.pry