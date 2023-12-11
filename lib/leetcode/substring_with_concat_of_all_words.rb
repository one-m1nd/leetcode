
module Leetcode
  #https://leetcode.com/problems/substring-with-concatenation-of-all-words/
  class SubstringWithConcatofAllWords
    # @param string [String]
    # @param words [Array<String>]
    # @return [Array]
    def execute(string, words)
      found = []

      words.permutation.each do |permutation|
        word = permutation.join("")
        found << string.index(word) if string.include?(word)
      end

      found
    end
  end
end