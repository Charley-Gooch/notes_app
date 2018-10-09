require 'Notes'

describe Notes do
 @note = nil
 before do
  @note = Notes.new
 end
 describe '#viewBody' do
  it 'Notes identifies viewBody method' do
   expect(@note).to respond_to(:viewBody)
  end
 end
end