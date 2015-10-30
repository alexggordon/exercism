#!/usr/bin/env ruby

require 'time'
class Gigasecond

  VERSION = 1.freeze

  def self.from time
    # You can add seconds to an instance of Time, so rather than do a bunch of messy
     # calculation, lets let the standard library take care of it
    Time.parse(time.to_s) + (10**9)
  end
end
