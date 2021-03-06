#!/usr/bin/env ruby
require("./lib/neko.rb")

puts 'Name your cat'
your_cat = gets.chomp
puts "Hello, #{your_cat}, what's your color?"
your_cat_color = gets.chomp

neko = Neko.new(your_cat, your_cat_color)
puts "Welcome #{neko.color} cat #{neko.stored_name}!!"


choice = ""

until choice == "6" do
  puts ""
  puts "Enter a number"
  puts "0. Check your nekos profile"
  puts "1. Give food"
  puts "2. Give treat"
  puts "3. Play"
  puts "4. Sleep"
  puts "5. Clean"
  puts "6. Quit"
  puts ""

  choice = gets.chomp
  puts ""
  if choice == "0"
    puts neko.profile
  elsif choice == "1"
    puts neko.give_food
  elsif choice == "2"
    puts "Choose your treats"
    puts "1. karikari"
    puts "2. wet food"
    treat_choice = gets.chomp
    if treat_choice == "1"
      puts neko.treat("karikari")
    else
      puts neko.treat("wet food")
    end
  elsif choice == "3"
    puts neko.play
  elsif choice == "4"
    puts neko.neru
  elsif choice == "5"
    puts neko.clean
  elsif choice == "6"
    puts "bye bye"
  end
end

