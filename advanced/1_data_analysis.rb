
# Find the mean, median, and mode of the inputted data, return as hash -> NOTE: assume the data is NOT multi-modal (ie only one mode)
# Hint use hashes to count the number of times you've seen a number for mode
# Hint mean = sum(arr_elements) / length of array
# Hint median = middle element if array length is odd, the avg of the two middle elements if array legnth is even
# Hint: Dividing two integers together in ruby will probably not give you the correct answer. Make sure at least one is a float (use #to_f)

def mmm(data)

    ret_hash = {} # Initialize hash that will return values
    ret_hash[:mean] = data.sum.to_f / data.length # Calculate the mean (sum over array, divide by length)
    middle = (data.length / 2).floor # Find middle element of the array. Note this will be used differently for even or odd array
    sdata = data.sort # You must sort the data before calculating the median, because we want the middle index of the array which only means anything if the data is sorted
    ret_hash[:median] = data.length.odd? ? sdata[middle] : (sdata[middle - 1] + sdata[middle]).to_f / 2.0 # If the length of the array is odd, the median is the middle index. If it is even, we need to take the average of the two middle indices
    
    
    # Determine the mode by keeping a hash of a data value and how many times it has appeared. Then we can use that hash to find the item that appeared most. 
    memo_count = {} # The memory of which items have been seen at what frequency (in a hash)
    data.each do |el|
        memo_count[el] ||= 0 # if memo_count does not exist, initialize it to 0 (because it will be incremented in the next line)
        memo_count[el] += 1 # increment the amount of times you have seen an element in the data array. 
    end

    # Return the item that was seen most
    mode_count = -Float::INFINITY
    mode = nil
    memo_count.each do |el, count|
        (mode_count, mode = count, el) if count > mode_count
    end

    ret_hash[:mode] = mode 

    ## ADVANCED: You can also do both of these steps to find the mode at once using reduce. 
    # You can use reduce any time you want to turn an array into a single piece of data. In this case, we want to turn an array 
    # into the mode. We can update an outside hash to keep track of what we have seen so far, and keep the "cumulative" variale up to date as a hash of the current "winner" of what mode is.
    # This only iterates through the array once and accomplishes the same thing as the two iterations above. Note that reduce can accept a argument and take a block. Our argument defaults to nil, 
    # but we can set an initial value for our first variable in our block, `cum`. In this case, we want to set it to a hash that will do the same thing as the two variables `mode_count` and `mode`
    # above. We memoize the data above the reduce hash, and `reduce` our array in to a hash that reprisents the mode value and the number of times it appeared in the data.
    # We then just grab the mode value and set it equal to ret_hash[:mode]. The return value from our block will become our new `cum` local variable. So, if we find a new mode as we traverse, we update
    # the mode "current winner" which is saved in the cum variable, initialized in the input argument.

    # memo = {}
    # ret_hash[:mode] = data.reduce({count: -Float::INFINITY, val: nil}){ |cum, curr| memo[curr] ||= 0; memo[curr] += 1; memo[curr] > cum[:count] ? {count: memo[curr], val: curr} : cum }[:val]


    return ret_hash

end