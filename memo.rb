class Memo < Post
  #Если мы не добавляем никаких новых полей то можно не вызывать initialize
  #Переменные зданные в Post и так будут доступны в Memo


  def read_from_console
    @text = []
    line = ""
    puts "Новая замета (Всё, что пишите до слова 'end')"

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end
    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S") \ n \ r \ n \ r}"
    #Метод unshift добавляет в начало массива строчку time_string
    return @text.unshift(time_string)
  end
end