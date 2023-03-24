# Write a program that:
#   Asks the user for an Integer, then checks to see if that integer is
#   a value of any of the keys in sample_hash.
#   If you find the number, print out "100 is under the key: a."
#   If you don't find the number print out "Could not find the integer 100"

sample_hash = {:a => 100, :b => 200, :c => 300, :d => 400, :e => rand(200), :f => 600, :g => 0 }

p "Enter an integer to find:"

num = gets.chomp.to_i

# defined to keep track of wether or not we have found the input integer
#set to false because input integer is not found yet.
# if found set flag to true
found = false

#iterate over hash using .each
sample_hash.each do |key, value|
  if value == num
    puts "#{num} is under the key: #{key}."
    found = true
    break
  end
end

puts "Could not find the integer #{num}." unless found
