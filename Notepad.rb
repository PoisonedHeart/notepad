Подключаем файлы из Той же директории
require_relative 'post'
require_relative 'memo'
require_relative 'task'
require_relative 'link'

puts "Привет я твой блокнот!"
puts "Что хотите записать в блокнот?"
choices = Post.post_types
#Присвоим заведомо неверное значение
choice = -1
#До тех пор пока переменная не станет больше или равно 0 или меньше размера массива всех возможных типов.
until choice >= 0 && choice < choices.size
  Пока он не выберет ему будет предложено выбирать из ассортимента
  Это мы сделаем динамически
  #массив.each_with_index do |элемент, индекс| - цикл по всем элементам данного массива. Распечатываем весь массив с индексами для выбора.
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end
  choice = STDIN.gets.chomp.to_i
end
#Создаем в статическом методе поста
entry = Post.create(choice)
#Дергаем абстрактный метод, !Который на деле будет вызван у конкретного класса, в зависимости от того какой класс был создан.
entry.read_from_console
#Сохраняем
entry.save

puts "Ура! Запись сохранена"