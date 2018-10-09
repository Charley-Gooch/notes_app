class Notes
  @title = nil
  @body = nil
  def initialize(noteTitle: title, noteBody: body)
    @title = noteTitle
    @body = noteBody
  end
  
  def viewBody
    @body.to_s
  end
  
  def viewTitle
    @title.to_s
  end
end