#!/usr/bin/env ruby

class Integer

  # It should be noted that the best way to handle this situation is
  # probably with ruby refinements. In general, because of possible
  # conflicts, it's bad voodoo to extend core classes for DSL needs.

  def to_roman
    numerals = {
        1000 => 'M',
        900  => 'CM',
        500  => 'D',
        400  => 'CD',
        100  => 'C',
        90   => 'XC',
        50   => 'L',
        40   => 'XL',
        10   => 'X',
        9    => 'IX',
        5    => 'V',
        4    => 'IV',
        1    => 'I'
      }

    # As we're extending the integer class, self represents the number
    # this is called on

    # placeholder number so we don't have to modify "self"
    number_to_convert = self

    # the string holding the roman numeral.
    numeral = String.new

    # here, we iterate through the numerals and subract the largest
    # possible number (that is a roman numeral) from the starting number
    # continuously until our original number equals zero, and we have a
    # stored string of the roman numeral it represents.
    while number_to_convert > 0 do
      numerals.each do |number, roman_numeral|
        if number_to_convert >= number
          numeral << roman_numeral
          number_to_convert = number_to_convert - number
          # we break here because we don't want to continue iterating
          # through the numerals in order if we find a match.
          break
        end
      end
    end

    return numeral
  end
end
