# Ask for a name, age, and occupation; store the values in a Hash; display the Hash.
# Make sure the value of the :age key is an Integer

p "Enter a name, age, and occupation separated by spaces:"
person = {}

input = gets.chomp.split(" ")

#iterate over the input
input.each do |key|
  #push attributes to the array
  person.store(:first_name, input[0])
  person.store(:age, input[1].to_i)
  person.store(:occupation, input[2])
  puts person
end
