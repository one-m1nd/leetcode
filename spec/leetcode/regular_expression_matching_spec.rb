RSpec.describe Leetcode::RegularExpressionMatching do
  describe '#execute' do
    let(:string) { [] }
    let(:pattern) { [] }

    subject { Leetcode::RegularExpressionMatching.new.execute(string, pattern) }

    context 'aa, p' do
      let(:string) { "aa" }
      let(:pattern) { "p" }

      it do
        expect(subject).to be false
      end
    end

    context 'aa, a*' do
      let(:string) { "aa" }
      let(:pattern) { "a*" }

      it do
        expect(subject).to be true
      end
    end

    context 'ab, .*' do
      let(:string) { "ab" }
      let(:pattern) { ".*" }

      it do
        expect(subject).to be true
      end
    end
  end
end