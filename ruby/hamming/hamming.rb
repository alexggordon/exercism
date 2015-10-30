class Hamming
  VERSION = 1.freeze

  def self.compute strand_1, strand_2
    distance = 0
    if not (strand_1 || strand_2)
      raise ArgumentError
    elsif strand_1.length != strand_2.length
      raise ArgumentError
    else
      strand_1.split("").each_with_index do |strand, index|
        if strand_2[index] != strand
          distance += 1
        end
      end
    end
    distance
  end
end
