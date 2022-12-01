# https://adventofcode.com/2022/day/1
require 'pry'

input = File.read('day/1/input.txt')

# Find the calories for the top elf
top_elf_calories = 0
current_elf = 0

input.each_line do |line|
    if line == "\n" 
        if current_elf > top_elf_calories
            puts "New top Elf: #{current_elf}"
            top_elf_calories = current_elf
        end

        current_elf = 0
        next
    end
    
    calories = line.to_i
    current_elf += calories
end

puts "Top Elf: #{top_elf_calories}"