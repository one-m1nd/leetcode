module Leetcode
  class MedianOfTwoSortedArrays
    # @param nums1 [Array<Integer>]
    # @param nums2 [Array<Integer>]
    # @return [Float]
    def execute(nums1, nums2)
      nums = (nums1 + nums2).sort
      half = (nums.length/2).floor

      if nums.length.even?
        (nums[half] + nums[half - 1]) / 2.0
      else
        nums[half].to_f
      end
    end
  end
end