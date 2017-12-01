

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
	map = {}  
	nums.each_with_index{|v,i| map[v] = i}  
	nums.each_with_index do |v,i|  
		remain = target - v  
		if (ri = map[remain]) != nil && i != ri  
			return [i, ri]  
		end  
	end
end