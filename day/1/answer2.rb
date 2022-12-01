# https://adventofcode.com/2022/day/1
require 'pry'

input = File.read('day/1/input.txt')

# Find the total calories for the top 3 elves
top_three_elves = []

current_elf = 0
input.each_line do |line|
    if line == "\n" 
        top_three_elves << current_elf
        top_three_elves = top_three_elves.sort.reverse.take 3

        current_elf = 0
        next
    end
    
    calories = line.to_i
    current_elf += calories
end
puts top_three_elves.reduce(:+)