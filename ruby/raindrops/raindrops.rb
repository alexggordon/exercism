#!/usr/bin/env ruby

require 'prime'
class Raindrops
  def self.convert drops
    # empty string for return clause
    output = String.new

    # the possible words we might return
    words = ['Pling', 'Plang', 'Plong'].freeze

    # find the prime factors of the drop
    prime_factors = Prime.prime_division(drops, generator= Prime::Generator23.new)

    # Flatten the array returned so we can call .include?(number) on it.
    prime_factors.flatten!

    # if one of the numbers is a prime factor, add the corresponding word to the output
    [3,5,7].each_with_index do |prime, index|
      if prime_factors.include?(prime)
        output << words[index]
      end
    end
    output.empty? ? drops.to_s : output
  end
end
