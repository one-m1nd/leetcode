RSpec.describe Leetcode::MedianOfTwoSortedArrays do
  describe '#execute' do
    let(:nums1) { [] }
    let(:nums2) { [] }

    subject { Leetcode::MedianOfTwoSortedArrays.new.execute(nums1, nums2) }

    context '[1, 3], [2]' do
      let(:nums1) { [1, 3] }
      let(:nums2) { [2] }

      it do
        expect(subject).to be_instance_of(Float)
        expect(subject).to eql(2.0)
      end
    end

    context '[1, 2], [3, 4]' do
      let(:nums1) { [1, 2] }
      let(:nums2) { [3, 4] }

      it do
        expect(subject).to be_instance_of(Float)
        expect(subject).to eql(2.5)
      end
    end
  end
end