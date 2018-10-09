require 'Main'

describe Main do
  @main = nil
  before do
    @main = Main.new
  end
  it 'responds to method to display inital menu' do
    expect(@main).to respond_to(:notesMenu)
  end
  it 'responds to method that handles background processing' do
    expect(@main).to respond_to(:optionSort)
  end
end