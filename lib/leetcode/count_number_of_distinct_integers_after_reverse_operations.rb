module Leetcode
  class CountNumberOfDistintIntegersAfterReverseOperations
    # @param nums [Array<Integer>]
    # @return [Integer]
    def execute(nums)
      reversed = nums.map { |num| num.to_s.reverse.to_i }
      nums.concat(reversed).uniq.length
    end
  end
end