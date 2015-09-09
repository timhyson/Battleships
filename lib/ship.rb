class Ship

attr_reader :position
attr_reader :direction
attr_reader :size
attr_reader :hits

def initialize(position, direction = :N, size = 1, hits = 0)
  @direction = direction
  @position = position
  @size = size
  @hits = hits
end

def was_hit
  @hits += 1
  	return "sunk" if @hits == @size
  
end



end
