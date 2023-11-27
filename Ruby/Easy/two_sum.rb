# Description: Given an array of integers, return indices of the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    # Create a hash to store the values
    hash = {}
    # Loop through the array
    nums.each_with_index do |num, index|
        # Check if the hash has the difference
        if hash[target - num]
            # Return the indices
            return [hash[target - num], index]
        else
            # Store the value and index
            hash[num] = index
        end
    end
end