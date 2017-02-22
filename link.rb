#Так объявляется дочерний класс
#Дочернийкласс << Родительскийкласс
class Link < Post
#Конструктор дочернего класса
  def initialize
    #Чтобы конструктора дочернего класса при своем вызове сформировал теже поля что были в родителе нужно написать:
    super #Возьми метод у родителя
    #Добавим пока пустую
    @url =''
  end
#Каждый класс знает как прочитать себя из консоли
  def read_from_console
    puts "Введите ссылку"
    @url = STDIN.gets.chomp
    puts "Что это за ссылка?"
    @text = STDIN.gets.chomp
  end
#И как преобразовать себя в массив строк, готовых для записи в файл.
  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r "
    return [@url, @text, time_string]
  end
end
