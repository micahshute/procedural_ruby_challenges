# Write a method which symbolizes a light switch. Make that method accept an array. Assume the array will be full of integers.
# Set a local variable up to symbolize a light bulb, being on or off. It should begin in the off state. 
# Each even number should toggle our light on or off, and each odd number should do nothing
# At the end of the method, return if our light is on or off via a strring "on" or "off"
# IE: the input [1,3,5,7] should return "off" - the light switch is not touched because all numbers are odd
# The input [2] should return "on" - the even number toggles the light from it's initial off state to on. 
# The input [1,2,3,4] should return "off" (the two turns on the light, the 4 turns it off. The odd numbers do nothing)
# So, every time I see an even number I flip the switch. Every time I see an odd, I do nothing


def toggle_light(arr)
    light = false
    arr.each do |el|
        light = !light if el.even?
    end
    return light ? "on" : "off"
end

def toggle_light(arr)
    arr.reduce(0){ |s,c| c.even? ? s + 1 : s }.even? ? "off" : "on"
end

switch_arr1 = [1,3,5,7] # expect off
switch_arr2 = [1,2,3,4] # expect off
switch_arr3 = [2,4,6,8] # expect off
switch_arr4 = [1,2,5,7,9,10,12] # expect on
switch_arr5 = [2,1,4,3,6,6,8,9] # expect on

puts "#{toggle_light(switch_arr1)}, #{toggle_light(switch_arr2)}, #{toggle_light(switch_arr3)}, #{toggle_light(switch_arr4)}, #{toggle_light(switch_arr5)}"
