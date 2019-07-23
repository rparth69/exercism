
# class Series
#   def initialize(number)
#     @digits = number.chars.map(&:to_i)
#   end

#   def slices(size)
#     fail ArgumentError if size > @digits.length or size <= 0

#     @digits.each_cons(size).to_a
#   end
# end

class Series
  def initialize(raw)
    @raw = raw
  end

  def slices(size)
    raise ArgumentError if size > @raw.size

    first = 0
    last = @raw.size - size
    (first..last).map { |start| @raw[start, size] }
  end
end