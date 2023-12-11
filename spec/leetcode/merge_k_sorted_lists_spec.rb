RSpec.describe Leetcode::MergeKSortedLists do
  describe '#execute' do
    let(:lists) { [] }

    subject { Leetcode::MergeKSortedLists.new.execute(lists) }

    context '[[1, 4, 5], [1, 3, 4], [2, 6]]' do
      let(:lists) { [[1, 4, 5], [1, 3, 4], [2, 6]] }

      it do
        expect(subject).to be_instance_of(Array)
        expect(subject).to eql([1, 1, 2, 3, 4, 4, 5, 6])
      end
    end

    context '[]' do
      let(:lists) { [] }

      it do
        expect(subject).to be_instance_of(Array)
        expect(subject).to eql([])
      end
    end

    context '[[]]' do
      let(:lists) { [[]] }

      it do
        expect(subject).to be_instance_of(Array)
        expect(subject).to eql([])
      end
    end
  end
end