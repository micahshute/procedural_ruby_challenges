# Write a method which returns the closest power of 2 above that given number (assume number is a float)
# If you have trouble writing this first method, let me know and I'll give you the answer. I don't want you spending too much time figureing it out, it is not an important concept. 
# Write another method which accepts an array of ints and uses each to iterate through them. 
# The each should call your first method 

def closest_pow_2(num)
    2 ** num.ceil
end

def find_an_8_with_each(arr)
    arr.each do |el|
        return el if closest_pow_2(el) == 8 
        # Note that this explicit return in our block actually returns from the whole method, not just from our block
    end
    return nil
end

input_arr = round_nums(test_arr, 10)
puts find_an_8_with_each(input_arr)
