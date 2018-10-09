require_relative 'Notes'

class Main
@existingNotes = {}
@count = 1
@quit = false

  def initialize
    while ( @quit == false ) do
      @count += @existingNotes.length
     optionSort(notesMenu())
    end
  end

  def notesMenu
    puts "Please choose an option by typing the number associated:"
    puts "1) Create a new note"
    puts "2) View all created notes"
    puts "3) View details of created note"
    puts "4) Delete created notes"
    puts "5) Quit"
    puts ""
    return gets.chomp.to_s
  end

  def optionSort(selection)
    case selection
    when "1"
      puts "Please enter the title of your new note."
      title = gets.chomp.downcase.capitalize
      puts "Now, please enter the body of your new note."
      body = gets.chomp.downcase.capitalize
      @existingNotes[@count] = Notes.new(noteTitle: title, noteBody: body)
      puts "Note created with ID: #{@count.to_s}"
      puts ""
    when "2"
      viewAll()
    when "3"
      puts "Please enter the ID of the note you wish to view"
      viewNote(gets.chomp.to_i)
    when "4"
      puts "Please enter the ID of the note you wish to delete"
      deleteNote(gets.chomp.to_i)
    when "5"
      @quit = true
    else
      puts "Invalid choice"
      puts ""
    end
  end
  
  def viewAll()
  @existingNotes.each do |x, y|
      puts "Note: #{x}"
      puts "Title: #{y.viewTitle}"
    end
    puts ""
  end

  def viewNote(id)
    @existingNotes.each do |x, y|
      if(x = id)
        puts "Title: #{y.viewTitle()}"
        puts "Body: #{y.viewBody()}"
        puts ""
      else
        puts "Note not found"
      end
    end
  end

  def deleteNote(id)
    @existingNotes.each do |x, y|
      if(x = id)
        @existingNotes.delete(x)
        puts "Note #{x} has been deleted"
        puts ""
      else
        puts "Note not found"
      end
    end
  end
end