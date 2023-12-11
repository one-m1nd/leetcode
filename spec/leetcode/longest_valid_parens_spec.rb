RSpec.describe Leetcode::LongestValidParens do
  describe '#execute' do
    let(:string) { [] }
    let(:words) { [] }

    subject { Leetcode::LongestValidParens.new.execute(string) }

    context '(()' do
      let(:string) { "(()" }

      it do
        expect(subject).to eql 2
      end
    end

    context ')()())' do
      let(:string) { ")()())" }

      it do
        expect(subject).to eql 4
      end
    end

    context '' do
      let(:string) { "" }

      it do
        expect(subject).to eql 0
      end
    end
  end
end