# Given an integer list where each number represents the number of hops you can make, 
# determine whether you can reach to the last index starting at index 0.
# For example, [2, 0, 1, 0] returns true while [1, 1, 0, 1] returns false.

def reach_last_index(hops_array)
  results = []

  return true if hops_array.length < 2

  hops_array.first.times do |i|
    hops_array.shift
    results << reach_last_index(hops_array)
  end

  return results.any? true
end