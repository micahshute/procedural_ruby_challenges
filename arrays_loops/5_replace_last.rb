a = ["Hello", "World"]
value = "Micah"

def replace_last_val(arr, val)
    arr[arr.length - 1] = val
    return arr
end

puts replace_last_val(a, value).to_s
