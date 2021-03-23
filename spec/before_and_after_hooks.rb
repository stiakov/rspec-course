RSpec.describe 'before and after hooks' do
  before(:context) { puts 'Before context' }
  after(:context) { puts 'Before context' }
  before(:example) { puts 'Before example' }
  after(:example) { puts 'Before example' }
  
  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end
end