#Write a method which accepts an array of strings of ints (ie ["1", "2", "3"]), and maps it to an array of integers corresponding to the string

arr = [1,2,3,4,5,6,7,8]
arr.map!(&:to_s)
puts arr.to_s
# Note above just sets input - I was lazy and didn't want to type quotations

def map_to_i(a)
    return a.map{ |s| s.to_i }
end

# OR

def map_to_i_v2(a)
    return a.map(&:to_i)
end

puts map_to_i(arr).to_s
puts map_to_i_v2(arr).to_s