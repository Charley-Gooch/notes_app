require 'Main'

describe Main do
  before do
    @main = Main.new
  end
  describe '#notesMenu' do
    it 'responds to method to display inital menu' do
      @main.stub!(:gets).and_return("5")
      expect(@main).to respond_to(:notesMenu)
    end
  end
  describe '#optionSort' do
    it 'responds to method that handles background processing' do
      expect(@main).to respond_to(:optionSort)
    end
  end
  describe '#viewNote' do
    it 'responds to method that prints selected note to console' do
      expect(@main).to respond_to(:viewNote)
    end
  end
  describe '#viewAll' do
    it 'responds to method that prints all created notes to console' do
      expect(@main).to respond_to(:viewAll)
    end
  end
  describe '#deleteNote' do
    it 'responds to method that deletes selected note from saved notes' do
      expect(@main).to respond_to(:deleteNote)
    end
  end
end