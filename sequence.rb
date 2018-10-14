require './sequence_item'

# Generates sequence
class Sequence
  attr_reader :sequence

  def initialize(first_item)
    @sequence = [first_item]
  end

  def continue_sequence(step_count)
    step_count.times do
      @sequence << generate_new_sequence_item
    end
  end

  def print
    @sequence.each { |item| p item }
  end

  private

  def generate_new_sequence_item
    arr = @sequence.last.split('')

    new_item =
      arr.each_with_object([]) do |el, acc|
        acc.last == el ? acc.last.increase_count : acc << SequenceItem.new(el)
      end

    new_item.join
  end
end
