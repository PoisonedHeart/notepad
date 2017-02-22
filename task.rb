require 'date'
class Task < Post
  def initialize
    super
    @due_date =Time.now
  end

  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp
    puts "К какому числу нужно сделать? Укажите дату в формате ДД.ММ.ГГГГ"
        input = STDIN.gets.chomp
    #Пока что input это строчка!
    #Чтобы преобразовать строчку в дату нужно подключить библиотеку date и воспользоваться методом:
    @due_date = Date.parse(input) #Вызвав статический метод parse на переменную input
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r "
    deadline = "Крайний срок: #{@due_date}"
    #Возвращаем результирующий массив
    return [deadline, @text, time_string]
  end
end
