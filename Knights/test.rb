def valid_moves(pos)
  valid_arr = []
  i, j = pos
  # ((i - 2)..(i + 2)).each do |row|
  #     ((j - 2)..(j + 2)).each do |col|
  #         valid_arr << [row, col] if j >= 0 && i >= 0 
  #     end
  # end
  all_possible_index_change = [[-2,1], [-2,-1], [-1,2], [-1,-2], [1,2], [1,-2], [2,1],[2,-1]]
  all_possible_index_change.each do |change|
      valid_arr << [i+change[0], j+change[1]] if (i+change[0] >= 0 && j+change[1] >=0)
  end
  valid_arr.delete(pos)
  return valid_arr
end

#p valid_moves([3,3])
#p valid_moves([0,0])
p [[1, 4], [1, 2], [2, 5], [2, 1], [4, 5], [4, 1], [5, 4], [5, 2]] - [[1, 4], [1, 2]]