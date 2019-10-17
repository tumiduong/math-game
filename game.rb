require './player'

class Game
  
  def initialize
    @players = [@p1 = Player.new("Player 1"), @p2 = Player.new("Player 2")]
  end

  def game_over
    @players.select{ |player| player.lost? }.count == 1
  end

  def run
    while (!game_over) do
      puts "----- NEW TURN -----"

      current_player = @players.first

      current_player.turn

      puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"

      @players.rotate!
    end

    winner = @players.select{ |player| !player.lost? }[0]
    puts "----- CONGRATS -----"
    puts "#{winner.name} wins with a score of #{winner.lives}/3!"
    puts "----- GAME OVER -----"
    puts "Thanks for playing!"

  end

end