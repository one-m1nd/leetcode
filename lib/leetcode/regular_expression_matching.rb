
module Leetcode
  # https://leetcode.com/problems/regular-expression-matching/
  class RegularExpressionMatching
    # @param string [String]
    # @param pattern [String]
    # @return [Boolean]
    def execute(string, pattern)
      return true if pattern == ".*"

      if pattern.include?("*")
        index = pattern.index("*")
        matcher = pattern[index-1]
        return true if string.include?(matcher)
      end

      false
    end
  end
end