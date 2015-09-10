require_relative 'board'
require_relative 'ship'


class Player

  attr_reader :board, :ships, :hits, :misses

  def initialize
    @board  = Board.new
    @ships_positions  = []
    @hits   = []
    @misses = []
  end

  def receive_miss(coord)
    @misses << coord
    'miss'
  end

  # def receive_hit(coord)
  #   @ships.each do |x|
  #     if x.position == coord
  #       @hits << coord
  #       x.was_hit
  #       return 'hit'
  #       lost
  #     else
  #       @misses << coord
  #       return 'miss'
  #     end
  #   end
  # end

  def place(shipklass, position, direction,size = 1)
    fail "#{position}: ships cannot overlap" if @ship_positions.include?(position)
    ship_positions << position
    board.ships << shipklass.new(position, direction,size)
  end

  def lost
     return 'Game Over - You Lose' if ships.any?{|ship| ship.afloat? == false}
  end

end
