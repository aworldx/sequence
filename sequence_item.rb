# Keeps symbol continious entrance count
class SequenceItem
  def initialize(item, count = 1)
    @pair = [item, count]
  end

  def symbol
    @pair[0]
  end

  def count
    @pair[1]
  end

  def increase_count
    @pair[1] += 1
  end

  def to_s
    "#{count}#{symbol}"
  end

  def ==(other)
    symbol == other
  end
end
