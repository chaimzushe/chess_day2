require_relative 'piece.rb'
require_relative 'sliding_piece.rb'
require_relative 'board.rb'

class Rook < Piece
  include SlidingPiece

  def initialize(pos, board, color)
    super
    @symbol = "♖".colorize(color)
  end

  def moves
    horizontal_dirs
  end
end
