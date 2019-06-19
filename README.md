TOPIC: Arrays / Loops

1. Write a method which accepts an array. Return true if any member in the array equals the current index number. If no element in the array is equal to its index number, the method should return false. Use proper ruby custom by making your method end with a question mark, which indicates that the return value of your method is a boolean value. For example, the method name equals_index? would be a good choice. You must use a while loop or a for loop in your method. Do not use iterators like each and map. Example: An input of [1,2,3,4,5,6,7,8,9] should return false. An input of [1,2,3,4,5,5,4,3,2,1] should return true. Make sure that other inputs which meet or do not meet the requirement return the appropriate result. [0] returns true, [100, 50] returns false.

2. Write a method which accepts 2 arguments: a number and a string (assume the string is an action verb). USE A WHILE LOOP (not an iterator such as each or map) to create an array that has X elements that are the string: “I am <whatever_your_string_input_is>”, where X is the number input inputted as the first argument into your method. Return this array. For example, if your method name is create_array, then create_array(3, “Coding”) should return ["I am Coding", "I am Coding", "I am Coding"]. create_array(10, “Thinking”) should return ["I am Thinking", "I am Thinking", "I am Thinking", "I am Thinking", "I am Thinking", "I am Thinking", "I am Thinking", "I am Thinking", "I am Thinking", "I am Thinking"].

3. Write a method which accepts an array as an argument. Use a while loop to reverse the input argument by counting down from the last index of the array to index 0. Return a new array which is the reverse of the input array. Do not alter the initial array.

4. Write a method which accepts two arguments: an array, and some other arbitrary argument. Use a FOR loop (example below) to loop over the array indices. If the array contains the element which was the second argument in your method, then return the index at which you found that element. If the second argument of your method is not in the array at all, return -1. (This is ok because there are no negative indices, so the caller of your method knows that it was not found if -1 is returned). YOU CANNOT USE find or include! So, if your input arguments are [“baseball”, “basketball”, “football”, “hockey”, “pokemon”, “lacrosse”, “soccer”] and “lacrosse”, then your output should be 5, because that is the index number of “lacrosse” in your input array. If your input arguments are [“baseball”, “basketball”, “football”, “hockey”, “pokemon”, “lacrosse”, “soccer”] and “Micah”, you should return -1 from your method. If your inputs are [1,2,3,4,5] and 1, then your method should return 0.

For loop example : 

```ruby
limit = array.length
for counter in 0..limit 
# Do stuff here 
end
```


5. Write a method which accepts an array and some other argument. Destructively change the input array to make its last element equal to the other input argument. Return the altered array. 


TOPIC: Arrays / Hashes

1. Write a method which accepts an array of integers, and returns a hash of the input array’s length, its first index, its last index, and its maximum value. For example, an input of [1,5,2,78,2,3,6,1,3,5,1,6,4,2,63] should return {:length=>15, :first_index=>1, :last_index=>63, :maximum_value=>78}. You can use a for loop OR an iterator to complete this challenge.

2. Write a method that accepts an array and returns a hash whose keys are the unique elements of the array, and whose values are how many times each element appeared in the input array. For example, if your method input is [1,1,1,2,2,3] , your return value should be {1=>3, 2=>2, 3=>1}. An input of [1,5,2,78,2,3,6,1,3,5,1,6,4,2,63,78,2,1,1,3,1,1,5,2,1,1,63] should return {1=>9, 5=>3, 2=>5, 78=>2, 3=>3, 6=>2, 4=>1, 63=>2}.

TOPIC: Map / Collect / Each

1. Write a method which accepts an array of strings of integers (ie [“1”, “2”, “3”]), and maps it to an array of integers corresponding to the string. For example, an input of [“1”, “2”, “3”, “4”, “5”, “6”, “7”, “8”] should return the following array: [1, 2, 3, 4, 5, 6, 7, 8].

2. Write a method which accepts an array of floating point numbers (numbers with decimals) and an integer. Use map (or collect) to round each floating point number to the number of decimal places specified by the second input argument. For example, if your method name was round_nums, then round_nums([3.89310757468478, 7.821400507335797, 9.489479731433272, 1.5568686481719307, 2.1051095408316267, 9.161710697584876, 8.260510582112397, 6.401621941078249, 3.0068340622025347, 1.7677903283991292]) should return [3.89, 7.82, 9.49, 1.56, 2.11, 9.16, 8.26, 6.4, 3.01, 1.77]

3. Remember to use an iterator (not a while or for loop) for this exercise. Write a method which symbolizes a light switch. Make that method accept an array. Assume the array will be full of integers. Define a local variable to symbolize a light bulb, being on or off. It should begin in the off state. Each even number should toggle our light on or off, and each odd number should do nothing. At the end of the method, return if our light is on or off via a string “on” or “off”. For example, the input [1,3,5,7] should return “off” - the light switch is not touched because all of the numbers are odd. The input [2] should return “on” - the even number toggles the light from its initial off state to an on state. The input [1,2,3,4] should return “off”, because the 2 turns on the light, the 4 turns off the light, and the odd numbers do nothing. So, every time I seen an even number I want to “flip the switch” to the light bulb. Every time I see an odd number, I do nothing.

4. Refactor your Array/Loops challenges but use each or map instead.

5. Try this: https://www.codewars.com/kata/printer-errors/train/ruby

6. Write a method which returns the closest power of 2 for the rounded up version of the input number (note that the input argument may be a float). For example, 2.3 should return 8, 3.9 should return 16.

[Note: If you have trouble writing this method, let me know and I’ll show you the answer. I don’t want you spending too much time figuring it out, it is not an important concept - the second method is more important.]

Now, write another method which accepts an array of ints and uses the each iterator to iterate through them. Call your first method for each element in the input argument to your second method, and return the first element which returns 8 from your first method. If no number in your array returns 8 from your first method, your second method should return nil. For example, an input of [3.89310757468478, 7.821400507335797, 9.489479731433272, 1.5568686481719307, 2.1051095408316267, 9.161710697584876, 8.260510582112397, 6.401621941078249, 3.0068340622025347, 1.7677903283991292] should return 2.1051095408316267. An input of [6,7,8,9] should return nil.

Advanced Challenges:

1. Find the mean, median, and mode of the inputted data, and return the information as a hash. Note: assume the data is NOT multi-modal (ie there is only one mode). Hint1: use hashes to count the number of times you’ve seen a number for a mode. Hint2: mean = sum(arr_elements) / length of array. Hint3: median = middle element if array length is odd, or the avarage of the two middle elements if the array length is even. Hint4: Dividing two integers together in ruby will probably not give you the correct answer (integer division will be performed). Make sure at least one number in the division is a float (use #to_f)

2. Determine whether there exists a one-to-one character mapping from one string s1 to another s2. For example, given s1 = “abc” and s2 = “bcd”, return true since we can map “a” to “b”, “b” to “c”, and “c” to “d”. Given s1 = “foo” and s2 = “bar”, return false since the “o” cannot map to two characters.

3. Very Advanced: Given two rectangles on a 2D graph, return the area of their intersection. If the rectangles don't intersect, return 0. For example, given the following rectangles:

{ top_left: [1, 4], dimensions: [3, 3] # width, height } and

{ top_left: [0, 5], dimensions: [4, 3] # width, height } return 6.