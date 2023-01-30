require_relative 'tic_tac_toe'

class TicTacToeNode
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos

  end

  

  def losing_node?(evaluator)
  end

  def winning_node?(evaluator)
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    childrens = []
    board.each_with_index do |row, rowidx|
      row.each_with_index do |col, colidx|
        if col == nil

          childrens << TicTacToeNode(board.dup, <switched_mover_mark>, prev_move_pos = nil)
        tempnode.board([rowidx,colidx]) = <next_mover_mark>
        # change <next_mover_mark> to another
      end
    end
  end

  def switch_symbol
    if next_mover_mark == :x
      next_mover_mark = :o
    else
      next_mover_mark = :x
    end
  end



end
