class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lost?
    @lives == 0
  end

  def turn
    value1 = rand(1..20)
    value2 = rand(1..20)
    print "#{name}: What does #{value1} plus #{value2} equal?\n"
    player_answer = gets.chomp.to_i

    if player_answer == (value1 + value2)
      puts "#{name}: Correct!"
    else
      self.lives -= 1
      puts "#{name}: Woops, that's not right!"
    end

  end

end