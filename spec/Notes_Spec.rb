require 'Notes'

describe Notes do
 @note = nil
 before do
  @note = Notes.new()
 end
 describe '#initialize' do
  it 'responds to initialize method call' do
   expect(@note).to respond_to(:initialize)
  end
 end
end