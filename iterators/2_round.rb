# Write a method which accepts an array of floating point numbers (numbers with decimals) and an integer. 
# Use map to round each floating point number to the number of decimal places specified by the integer

def random_gen(num, gain = 1)
    r = Random.new
    nums = []
    num.times do 
        nums << r.rand * gain
    end
    return nums
end

test_arr = random_gen(10, 10)

def round_nums(arr, dec_place)
    arr.map do |el|
        el.round(dec_place)
    end
end

puts test_arr.to_s
puts round_nums(test_arr, 2 ).to_s