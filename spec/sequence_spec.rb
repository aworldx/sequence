require 'byebug'
require_relative '../sequence'

describe Sequence do
  describe '.continue_sequence' do
    context 'when starting sequence is 1' do
      it 'contains the same array that is provided' do
        seq = Sequence.new('1')
        seq.continue_sequence(5)

        arr = []
        arr << '1'
        arr << '11'
        arr << '21'
        arr << '1211'
        arr << '111221'
        arr << '312211'

        expect(seq.sequence).to eq(arr)
      end
    end
  end
end
