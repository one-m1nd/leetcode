module Leetcode
  # https://leetcode.com/problems/first-missing-positive/
  class FirstMissingPositive
    # @param nums [Array<Integer>]
    # @return [Integer]
    def execute(nums)
      lowest = 1

      nums.each do |num|
        lowest += 1 if num == lowest
      end

      lowest
    end
  end
end