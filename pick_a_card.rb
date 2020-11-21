# encoding: utf-8

# Подключаем класс колоды
require_relative 'lib/deck'

# Выводим приветствие
puts 'Pick a Card'
puts

# Создаем новую колоду и сразу её перемешиваем
deck = Deck.new.shuffle

# Спрашиваем у пользователя, сколько ему надо карт
puts 'How many cards do you pick?'
number = STDIN.gets.to_i

# Нужное число раз выкидываем из колоды последню карту
puts
number.times do
  puts deck.pop_a_card
end
