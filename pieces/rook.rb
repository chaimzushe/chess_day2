require_relative 'piece.rb'
require_relative 'sliding_piece.rb'

class Rook < Piece
  include SlidingPiece
  attr_reader :moved
  def symbol
    color == :black ? "\u265C" : "\u2656"
  end

  def moved
    @moved = true
  end

  def value
    50
  end


  def move_dirs
    horizontal_dirs
  end

end
