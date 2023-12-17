module Leetcode
  # https://leetcode.com/problems/generate-parentheses/
  class GenerateParentheses
    PARENS = "()".freeze

    # @param n [Integer] pairs
    # @return [Array<String>] pairs
    def execute(n)
      pairs = []

      n.downto(1) do |counter|
        pairs[0] = "(#{pairs[0]})"
      end

      (n - 1).downto(1) do |counter|
        pairs[1] = "(#{PARENS * (n - 1)})"
      end

      (n - 2).downto(1) do
        pairs[2] = "(#{pairs[2] || PARENS})()"
        pairs[3] = "()(#{pairs[3] || PARENS})"
      end

      pairs << PARENS * n

      pairs.uniq
    end
  end
end