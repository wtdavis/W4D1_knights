#W4D1 knights travails olga and will
require "00_tree_node.rb"
class KnightPathFinder

    def initialize(pos)
        @root_node = PolyTreeNode.new(pos)
        @considered_positions = [[pos]]

    end

    def 
    def self.class.valid_moves(pos)
        valid_arr = []
        i, j = pos
        ((i - 2)..(i + 2)).each do |row|
            ((j - 2)..(j + 2)).each do |col|
                valid_arr << [row, col] if j >= 0 && i >= 0 
            end
        end

        valid_arr.delete(pos)



    # def build_move_tree



end