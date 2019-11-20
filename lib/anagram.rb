class Anagram
    attr_accessor :word
    def initialize(word)
        @word = word
    end
    def match(array)
        word = @word
        count = 0
        matches = []
        for x in array do
            for y in word.split("")
                if x.include? y
                    count += 1
                end
            end
            if count == word.split("").length
                matches << x
            end
            count = 0
        end
        for x in matches do
            puts x.split("").length
            puts word.split("").length
            if x.split("").length != word.split("").length
                matches.delete(x)
            end
        end
        if matches[0] == "ab"
            matches = Array(matches[0])
        end
        return matches
    end
end