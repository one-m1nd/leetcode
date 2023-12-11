RSpec.describe Leetcode::ReverseNodesInKGroup do
  describe '#execute' do
    let(:head) { [] }
    let(:k) { [] }

    subject { Leetcode::ReverseNodesInKGroup.new.execute(head, k) }

    context '[1, 2, 3, 4 ,5], 2' do
      let(:head) { [1, 2, 3, 4 ,5] }
      let(:k) { 2 }

      it do
        expect(subject).to be_instance_of(Array)
        expect(subject).to eql([2, 1, 4, 3, 5])
      end
    end

    context '[1, 2, 3, 4, 5], 3' do
      let(:head) { [1, 2, 3, 4, 5] }
      let(:k) { 3 }

      it do
        expect(subject).to be_instance_of(Array)
        expect(subject).to eql([3, 2, 1, 4, 5])
      end
    end
  end
end