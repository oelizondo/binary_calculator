require 'binary'

describe 'Binary' do

  context '#convert' do
    it "converts a number to binary" do
      c = Binary.new(9)
      expect(c.convert).to eq('1001')
    end
  end

  context '#revert' do
    it 'reverts a binary number to alphanumeric' do
      c = Binary.new(1001)
      expect(c.revert).to eq(9)
    end
  end
end