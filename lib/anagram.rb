class Anagram
    attr_accessor :word

    def initialize(word)
        @og_word = word
    end

    def match(words_array)
        results = []
        words_array.each do |word|
            if word.split("").sort == @og_word.split("").sort
                results.push(word)
            end
        end
        results
    end
end
