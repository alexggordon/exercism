#!/usr/env/bin ruby

class Squares
  VERSION = 2.freeze

  def initialize range
    @range = 1..range
  end

  def square_of_sums
    @range.to_a.inject(:+)**2
  end

  def sum_of_squares
    @range.to_a.map!{|num| num ** 2}.inject(:+)
  end

  def difference
    self.square_of_sums - self.sum_of_squares
  end
end
