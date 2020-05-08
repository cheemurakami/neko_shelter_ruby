#!/usr/bin/env ruby
require("./lib/neko.rb")

puts 'Name your cat'
your_cat = gets.chomp
puts "Hello, #{your_cat}, what's your color?"
your_cat_color = gets.chomp

neko = Neko.new(your_cat, your_cat_color)
puts "Welcome #{neko.color} cat #{neko.stored_name}"

puts "Enter a number"
puts "1. Give food"
puts "2. Give treat"
puts "3. Play"
puts "4. Sleep"
puts "5. Clean"

choice = gets.chomp
if choice == "1"
  puts neko.give_food
end