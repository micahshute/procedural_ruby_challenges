# Write a method that accepts an array and returns a hash whose keys are the unique elements of the array, and whose values
# show how many times each element appeared in the array

a2h = [1,5,2,78,2,3,6,1,3,5,1,6,4,2,63,78,2,1,1,3,1,1,5,2,1,1,63]
short_test = [1,1,1,2,2,3]

def freq_count_v0(a)
    hist = {}
    a.each do |el|
        if hist[el].nil?
            hist[el] = 1
        else
            hist[el] += 1
        end
    end
    hist
end



def freq_count(a)
    hist = {}
    a.each do |el|
        hist[el] = 0 unless !!hist[el]
        hist[el] += 1
    end
    hist
end

def freq_count_v2(a)
    hist = {} 
    for el in a
        hist[el] ||= 0
        hist[el] += 1
    end
    hist
end

def freq_count_v3(a)
    a.reduce({}){ |hist, e| hist[e] ||= 0; hist[e] += 1; hist}
end

puts freq_count(short_test).to_s
puts freq_count_v2(short_test).to_s
puts freq_count(a2h).to_s
puts freq_count_v2(a2h).to_s