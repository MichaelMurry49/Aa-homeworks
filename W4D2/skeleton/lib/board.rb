class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new(4,:stone)}
    @cups[6] = []
    @cups[13] = []
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Starting cup is empty" if @cups[start_pos].empty?
    raise 'Invalid starting cup' if start_pos < 0|| start_pos > 13
  end

  def make_move(start_pos, current_player_name)
    index = start_pos + 1
    until @cups[start_pos].empty?
      @cups[index] << @cups[start_pos].pop
      index += 1
      index % 14
      if current_player_name = @name1
        index = 0 if index == 13
      else
        index += 1 if index == 6
      end
    end
    next_turn
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if 
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
