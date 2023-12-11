RSpec.describe Leetcode::SubstringWithConcatofAllWords do
  describe '#execute' do
    let(:string) { [] }
    let(:words) { [] }

    subject { Leetcode::SubstringWithConcatofAllWords.new.execute(string, words) }

    context 'barfoothefoobarman, ["foo", "bar"]' do
      let(:string) { "barfoothefoobarman" }
      let(:words) { ["foo", "bar"] }

      it do
        expect(subject).to eql [9, 0]
      end
    end

    context 'wordgoodgoodgoodbestword, ["word","good","best","word"]' do
      let(:string) { "wordgoodgoodgoodbestword" }
      let(:words) { ["word","good","best","word"] }

      it do
        expect(subject).to eql []
      end
    end

    context 'barfoofoobarthefoobarman, ["bar","foo","the"]' do
      let(:string) { "barfoofoobarthefoobarman" }
      let(:words) { ["bar","foo","the"] }

      it do
        expect(subject).to eql [9, 6, 12]
      end
    end
  end
end