require_relative 'ship'
require_relative 'player'

class Board

  # attr_reader :ships

  def initialize
    # @ships = []
  end

  # def place(ship)
  #   ships << ship
  # end

  def receive_a_hit(coord)
    ships.each do |ship|
      if ship.position == coord
        ship.was_hit
        return "hit"
      end
    end
    return 'miss'
  end

  # def hit_tally
  #   @hits.length
  # end

  # def ship_tally
  #   @ships.length
  # end

end
