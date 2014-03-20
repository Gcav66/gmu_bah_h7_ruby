# Return a reversed copy of the array
def reverse(an_array)
 return an_array.reverse
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1, 'e'=>1, 'l'=>2, 'o'=>1}
def histogram(a_string)
 str = a_string.downcase.split("")
 mp = Hash.new(0)
 str.each { |st| mp[st] += 1 }
 return mp
end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers

def sum_only_numbers(an_array)
 nums = an_array.select { |x| x.is_a? Numeric }
 return nums.inject { |sum,x| sum + x }
end

def fizzbuzz
 ary = Array.new
 for count in 1..100
  if count % 5 == 0 && count % 3 == 0
  ary.push("FizzBuzz")
  elsif count % 5 == 0
  ary.push("Buzz")
  elsif count % 3 == 0
  ary.push("Fizz")
  else
  ary.push(count)
  end
 end
 return ary
end

puts reverse([3,6,'dog']).inspect
puts histogram('The Quick brown fox').inspect
puts sum_only_numbers [4, 'foo', [], 27, :rain, 3.14]
puts fizzbuzz.join("\n")

