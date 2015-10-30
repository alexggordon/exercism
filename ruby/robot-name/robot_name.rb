class Robot
  VERSION = 1.freeze

  def initialize
    @name = generate_name()
  end

  def name
    @name
  end

  def reset
    @name = generate_name()
  end

  private

  def generate_name
    letters = [('A'..'Z')].map{ |i| i.to_a }.flatten
    numbers = [(0..9)].map{ |i| i.to_a }.flatten
    letters.sample(2).join.to_s + numbers.sample(3).join.to_s
  end

end
