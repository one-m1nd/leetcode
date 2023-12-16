RSpec.describe Leetcode::WildcardMatching do
  describe '#execute' do
    let(:string) { [] }
    let(:pattern) { [] }

    subject { Leetcode::WildcardMatching.new.execute(string, pattern) }

    context 'aa, a  ' do
      let(:string) { "aa" }
      let(:pattern) { "a" }

      it do
        expect(subject).to be false
      end
    end

    context 'aa, *' do
      let(:string) { "aa" }
      let(:pattern) { "*" }

      it do
        expect(subject).to be true
      end
    end

    context 'cb, ?a' do
      let(:string) { "cb" }
      let(:pattern) { "?a" }

      it do
        expect(subject).to be false
      end
    end
  end
end