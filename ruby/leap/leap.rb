#!/usr/bin/env ruby

class Year
  def self.leap? year
    if(year % 100 != 0 && year % 4 == 0) || year % 400 == 0
      true
    else
      false
    end
  end
end
