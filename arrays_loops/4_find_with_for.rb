# Use a for loop over a range to iterate through an array passed in. return the index in which you find a second argument passed in. If not found, return -1

def find_with_for(arr, el)
    for i in 0...arr.length 
        return i if arr[i] == el
    end
    return -1
end

sports = ["baseball", "basketball", "football", "hockey", "pokemon", "lacrosse", "soccer"]
puts find_with_for(sports, "lacrosse") #=> 5
puts find_with_for(sports, "micah") # => -1
puts find_with_for([1,2,3,4,5], 1) # => 0

