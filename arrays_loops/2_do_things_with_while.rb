# write a method which accepts a number and a string (string expeted to be an action verb). Write a while loop inside of that appends 
# "I am #{whatever_the_second_input_was}" to an array for each iteration of the while loop. Return the array.

#Example:


def do_stuff_with_while(num, thing)
    i = 0
    arr = []
    while i < num
        arr << "I am #{thing}"
        i += 1
    end
    return arr
end

puts do_stuff_with_while(3, "Coding").to_s
puts do_stuff_with_while(10, "Thinking").to_s