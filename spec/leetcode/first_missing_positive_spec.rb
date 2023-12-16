RSpec.describe Leetcode::FirstMissingPositive do
  describe '#execute' do
    let(:nums) { [] }
    subject { Leetcode::FirstMissingPositive.new.execute(nums)}

    context '[1,2,0]' do
      let(:nums) { [1,2,0] }

      it do
        expect(subject).to be 3
      end
    end

    context '[3,4,-1,1]' do
      let(:nums) { [3,4,-1,1] }

      it do
        expect(subject).to be 2
      end
    end

    context '[7,8,9,11,12]' do
      let(:nums) { [7,8,9,11,12] }

      it do
        expect(subject).to be 1
      end
    end
  end
end