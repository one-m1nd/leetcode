module Leetcode
  class MergeKSortedLists
    # @param lists [Array<Array<Integer>>]
    # @return [Array]
    def execute(lists)
      return [] if lists.empty?
      return [] if lists.all?(&:empty?)

      lists.flatten.sort
    end
  end
end