#!/usr/bin/env ruby

class Phrase
  def initialize phrase
    @phrase = phrase.gsub(/[^0-9A-Za-z]/, ' ').downcase
  end

  def word_count
    whole_phrase = @phrase
    phrase = @phrase.split(" ")
    final_count = Hash.new
    phrase.each do |word|
      final_count[word] = whole_phrase.scan(word).count
    end
    @final_count = final_count
  end
end
