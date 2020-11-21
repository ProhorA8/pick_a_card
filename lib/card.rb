# Класс карты
#
# Может сгенерить карту с заданными параметрами в т.ч. джокера и показать
# её в удобном виде.
class Card
  # Создаем новую карту с заданными параметрами
  def initialize(value, suit, joker = false)
    @value = value
    @suit = suit
    @joker = joker
  end

  # Возвращаем информацию для печати карты
  # Этот метод вызывается у объекта при передаче его в puts
  def to_s
    @joker ? 'Joker' : "#{@value}#{@suit[0].downcase}"
  end
end
