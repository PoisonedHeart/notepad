class Post
  #Реализуем 2 статических метода в классе Post
  #Объявляется def self.Имя_метода
  def self.post_types
    [Memo, Link, Task]
  end

  def self.create(type_index)
    return post_types[type_index].new
  end


  def initialize
    #Базовые поля
    @created_at = Time.now
    @text = nil
  end

#!!!Методы в родительском классе, в которых не реализован никакой алгоритм (пустые) называются абстрактные методы
  def read_from_console
    #todo
  end

  def to_strings
    #todo
  end

#Класс Post умеет себя сохранять в файл
  def save
    file = File.new(file_path, "w:UTF-8")
    for item in to_strings do
      file.puts(item)
    end
    file.close
  end

#Знает в какой файл он будет себя сохранять
#Путь к файлу
  def file_path
    current_path = File.dirname(__FILE__) #Бедем хранить там же где и программа
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt") #Берем время создания файла, преобразуем в строку по формату (имя класса и т.д.)
    return current_path + "/" + file_name
  end
end
