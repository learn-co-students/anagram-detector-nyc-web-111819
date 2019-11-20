require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(possible_anagrams)
    #return all matches in an array. If no matches exist, it should return an empty array.
    possible_anagrams.select do |gram|
      gram.split("").sort == @word.split("").sort
    end
  end

end

