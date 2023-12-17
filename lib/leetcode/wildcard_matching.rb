module Leetcode
  # https://leetcode.com/problems/wildcard-matching/
  class WildcardMatching
    # @param string [String]
    # @param pattern [String]
    # @return [Boolean]
    def execute(string, pattern)
      return true if pattern == "*"

      if pattern.include?("?")
        index = pattern.index("?")
        char = pattern[index + 1]
        string.include?(char)
      end

      false
    end
  end
end