require "byebug"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    #debugger
    @game_over = false
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    @sequence_length += 1
    show_sequence
    require_sequence
    unless game_over
      round_success_message
    end
  end

  def show_sequence
    seq.each do |i|
      p seq[i]
    end
  end

  def require_sequence
    # submission = gets.chomp.split(" ")
    # submission == seq
  end

  def add_random_color
    seq << COLORS.sample
    seq.last

  end

  def round_success_message
    puts "Congratulations, you made it past the round"

  end

  def game_over_message
    puts "Game over"
  end

  def reset_game
    self.seq = []
    self.sequence_length = 1
    #seq.add_random_color
    self.game_over = false
  end
end
