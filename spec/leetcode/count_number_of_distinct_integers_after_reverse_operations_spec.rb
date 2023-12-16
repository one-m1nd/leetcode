RSpec.describe Leetcode::CountNumberOfDistintIntegersAfterReverseOperations do
  describe '#execute' do
    let(:nums) { [] }
    subject { Leetcode::CountNumberOfDistintIntegersAfterReverseOperations.new.execute(nums) }

    context '[1,13,10,12,31]' do
      let(:nums) { [1,13,10,12,31] }

      it do
        expect(subject).to be 6
      end
    end

    context '[2,2,2]' do
      let(:nums) { [2,2,2] }

      it do
        expect(subject).to be 1
      end
    end
  end
end