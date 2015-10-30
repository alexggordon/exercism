#!/usr/bin/env ruby

class Grains
  def self.square chess_board_square
    # 2^(n-1)
    2 ** (chess_board_square - 1)
  end

  def self.total
    # 2^(n+1) - 1
    self.square(65) - 1
  end
end

