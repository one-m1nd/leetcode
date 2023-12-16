RSpec.describe Leetcode::NumberAfterDoubleReversal do
  describe '#execute' do
    let(:num) { nil }
    subject { Leetcode::NumberAfterDoubleReversal.new.execute(num) }

    context '526' do
      let(:num) { 526 }

      it do
        expect(subject).to be true
      end
    end

    context '1800' do
      let(:num) { 1800 }

      it do
        expect(subject).to be false
      end
    end

    context '0' do
      let(:num) { 0 }

      it do
        expect(subject).to be true
      end
    end
  end
end