
module Leetcode
  # https://leetcode.com/problems/longest-valid-parentheses/
  class LongestValidParens
    # @param string [String]
    # @return [Integer]
    def execute(string)
      found = 0

      string.chars.each_with_index do |str, index|
        if str == "("
          found += 2 if string[index + 1] == ")"
        end
      end

      found
    end
  end
end