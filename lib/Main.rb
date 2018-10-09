class Main
  def main
    optionSort(notesMenu())
  end

  def notesMenu
    puts "Please choose an option by typing the number associated:"
    puts "1) Create a new note"
    puts "2) View created notes"
    puts "3) Delete created notes"
    gets.chomp.to_s
  end

  def optionSort(notesMenu)
    case notesMenu
    when "1"
      puts "Please enter the title of your new note."
      title = gets.chomp.downcase.capitalize
      puts "Now, please enter the body of your new note."
      body = gets.chomp.downcase.capitalize
    when "2"
      puts viewNotes().to_s
    when "3"
      puts "please enter the title of the note you wish to delete"
      delete = gets.chomp.downcase.capitalize
    end
  end
end