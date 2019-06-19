# Write a method which accepts an array. Return true if any number in the array equals the current index number. Else, return false
# Use proper ruby custom by making your method end with a question mark, because it is returning a boolean. IE, you can call it something
# like `equals_index?`. Use a while loop or a for loop

def equals_index?(arr)
    for i in 0...arr.length do
        if arr[i] == i
            return true
        end
    end 
    return false
end


# Condensed: 


def equals_index2?(arr)
    for i in 0...arr.length do
        return true if arr[i] == i
    end 
    return false
end

test_arr1 = [1,2,3,4,5,6,7,8,9]
test_arr2 = [1,2,3,4,5,5,4,3,2,1]

puts equals_index?(test_arr1)
puts equals_index?(test_arr2)