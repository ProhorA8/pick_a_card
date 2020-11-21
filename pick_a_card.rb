puts 'Pick a card'

values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
suits = ["♦", "♠", "♥ ", "♣"]

puts "#{values.sample} of #{suits.sample}"

cards = []

values.each do |value|
  suits.each do |suit|
    cards << "#{value} of #{suit[0].downcase}"
  end
end

2.times do
  cards << '[Joker]'
end

cards.shuffle!

puts 'How many cards do you pick?'
number = STDIN.gets.to_i

number.times do
  puts cards.pop
end