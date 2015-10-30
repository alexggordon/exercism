#!/usr/bin/env ruby

class Prime
  # This was a complicated challenge that actually yielded some interesting results.

  # This commented function below is significantly more "ruby", however it's performance is very poor (my code runs much better)
  # def self.nth nth
  #   up_to = nth * (Math.log(nth) + 2)
  #   primes = (2..up_to).to_a
  #   primes.each {|num| primes.delete_if {|i| i > num && (i % num) == 0} }
  #   primes[nth-1]
  # end

  # I believe this is because I'm not ever maintaining a range of numbers that I'll iterate through,
  # but I haven't done any advanced performance metrics.
  def self.nth nth
    raise ArgumentError if nth <= 0
    placeholder = 3
    primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293]

    # if we already have our nth prime, just return it
    if primes.length > nth
      return primes[nth - 1]
    end

    # iterate through the prime array
    while primes.count != nth do
      primes.each do |prime|
        # not a prime if a prime number can divide into it
        if placeholder % prime == 0
          break
        # if we're at the last prime then this must be a prime, so add it to the array
        elsif prime == primes.last
          primes = primes + [placeholder]
        end
      end

      # iterate the placeholder and check if the new number is obviously not a prime.
      placeholder += 2
      while obvious_skip?(placeholder) == true || primes.include?(placeholder) do
        placeholder += 2
      end
    end

    return primes.last
  end

  private

  def obvious_skip? number
    case
    when number % 10 == 5
      return true
    when number % 3 == 0
      return true
    else
      return false
    end
  end
end
