require 'Main'

describe Main do
  describe '#notesMenu' do
    it 'responds to method to display inital menu' do
      allow(subject).to receive(:selection) {"5"}
      expect(subject).to respond_to(:notesMenu)
    end
  end
  describe '#optionSort' do
    it 'responds to method that handles background processing' do
      expect(subject).to respond_to(:optionSort)
    end
  end
  describe '#viewNote' do
    it 'responds to method that prints selected note to console' do
      expect(subject).to respond_to(:viewNote)
    end
  end
  describe '#viewAll' do
    it 'responds to method that prints all created notes to console' do
      expect(subject).to respond_to(:viewAll)
    end
  end
  describe '#deleteNote' do
    it 'responds to method that deletes selected note from saved notes' do
      expect(subject).to respond_to(:deleteNote)
    end
  end
end