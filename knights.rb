#W4D1 knights travails olga and will
require_relative "00_tree_node.rb"
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
            valid_arr << [i+change[0], j+change[1]] if (i+change[0] >= 0 && j+change[1] >=0 && i+change[0] <=7 && j+change[1] <=7 )
        end
        valid_arr.delete(pos)
        return valid_arr
    end

    def new_move_positions(pos)
        remaining_pos = self.class.valid_moves(pos) - @considered_positions
        @considered_positions += remaining_pos
        remaining_pos
    end

    def build_move_tree
        pos_tree = [@root_node]
        
        until pos_tree.empty?
            newmoves = new_move_positions(pos_tree[0].value)
            newmoves.each do |pos|
                node = PolyTreeNode.new(pos)
                node.parent=(pos_tree[0])
                pos_tree << node
            end
            pos_tree.shift
        end
    end

    def find_path(target)
        self.build_move_tree
        node = @root_node.dfs(target)
        #node = @root_node.bfs(target)
        #return node
        trace_path_back(node)
    end

    def trace_path_back(node) 
        path = []
        until node.parent == nil
            path << node.value
            node = node.parent
        end
        path << @root_node.value
        return path.reverse
    end

end

# kpf = KnightPathFinder.new([0,0])
# p kpf
# #p kpf.find_path([3,3])
# kpf.build_move_tree
# p kpf