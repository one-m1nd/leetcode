RSpec.describe Leetcode::GenerateParentheses do
  describe "#execute" do
    let(:n) { nil }
    subject { Leetcode::GenerateParentheses.new.execute(n) }

    context '3' do
      let(:n) { 3 }

      it do
        expect(subject).to eql(["((()))","(()())","(())()","()(())","()()()"])
      end
    end

    context '1' do
      let(:n) { 1 }

      it do
        expect(subject).to eql(["()"])
      end
    end
  end
end