# Use a while loop to reverse an array by counting down from the last index of the array to index 0

def reverse_array(arr)

    i = arr.length - 1
    dup_a = []
    while i >= 0
        dup_a << arr[i]
        i -= 1
    end
    dup_a
end


to_rev = [1,2,3,4,5,6,7]
puts reverse_array(to_rev).to_s