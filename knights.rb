#W4D1 knights travails olga and will
require "00_tree_node.rb"
class KnightPathFinder

    def initialize(pos)
        @root_node = PolyTreeNode.new(pos)
        @considered_positions = [[pos]]

    end

    def self.valid_moves(pos)
        valid_arr = []
        i, j = pos
        all_possible_index_change = [[-2,1], [-2,-1], [-1,2], [-1,-2], [1,2], [1,-2], [2,1],[2,-1]]
        all_possible_index_change.each do |change|
            valid_arr << [i+change[0], j+change[1]] if (i+change[0] >= 0 && j+change[1] >=0)
        end
        valid_arr.delete(pos)
        return valid_arr
    end

    def new_move_positions(pos)
        remaining_pos = self.class.valid_moves(pos) - @considered_positions
        @considered_positions += remaining_pos
        remaining_pos
    end

    # def build_move_tree



end