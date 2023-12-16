module Leetcode
  class NumberAfterDoubleReversal
    def execute(num)
      num.to_s.reverse.to_i.to_s.reverse.to_i == num
    end
  end
end