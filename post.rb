class Post
  def initialize
    #Базовые поля
    @create_at =Time.now
    @text = nil
  end

  def read_from_console
    #todo
  end

  def to_strings
     #todo
  end

#Класс Post умеет себя сохранять в файл
  def save
    file = File.new (file_path, "w:UTF-8")
    for item in to_strings do
      file.puts(item)
    end
    file close
  end

#Знает в какой файл он будет себя сохранять
#Путь к файлу
  def file_path
    current_path = File.dirname(__FILE__) #Бедем хранить там же где и программа
    file_name = @create_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt") #Берем время создания файла, преобразуем в строку по формату (имя класса и т.д.)
    return current_path + "/" + file_name
  end
end