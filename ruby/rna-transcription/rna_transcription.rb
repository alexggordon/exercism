#!/usr/bin/env ruby

class Complement
  VERSION = 2.freeze

  def self.of_dna strand
    # the regex tests for the existance of not the allowed letters
    #
    # Testing bad string
    #  'X' !~ /[^CGTA]/
    #  => 0
    #
    # Testing good string
    #  'GCTA'
    #  => nil
    raise ArgumentError unless (strand !~ /[^CGTA]/)
    strand.gsub!(/[CGTA]/,'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
  end

  def self.of_rna strand
    raise ArgumentError unless (strand !~ /[^CGUA]/)
    strand.gsub!(/[CGUA]/,'G' => 'C', 'C' => 'G', 'U' => 'A', 'A' => 'T')
  end

end
