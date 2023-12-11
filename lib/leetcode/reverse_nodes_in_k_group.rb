module Leetcode
  # https://leetcode.com/problems/reverse-nodes-in-k-group/
  class ReverseNodesInKGroup
    # @param head [Array<Integer>]
    # @param k [Integer]
    # @return [Array<Integer>]
    def execute(head, k)
      return head if k <= 1

      iterations = (head.length / k)
      iterations.downto(1) do |iteration|
        terminus_index = (iteration * k) - 1
        start_index = terminus_index - k + 1 <= 0 ? 0 : terminus_index - k + 1

        slice = head[start_index..terminus_index].reverse

        terminus_index.downto(start_index) do |swap_index|
          head[swap_index] = slice.pop
        end
      end

      head
    end
  end
end