require 'Notes'

describe Notes do
  @note = nil
  before do
    @note = Notes.new(noteTitle: "this is a title", noteBody: "this is just a test")
  end
  describe '#viewBody' do
    it 'Notes identifies viewBody method' do
      expect(@note).to respond_to(:viewBody)
    end
    it 'Returns the body of a given note' do
      expect(@note.viewBody()).to eql("this is just a test")
    end
  end
  describe '#viewTitle' do
    it 'Notes identifies viewTitle method' do
      expect(@note).to respond_to(:viewTitle)
    end
    it 'Returns the title of a given note' do
      expect(@note.viewTitle()).to eql("this is a title")
    end
  end
end