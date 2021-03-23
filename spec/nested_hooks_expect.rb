RSpec.describe 'nested hooks' do
  before :context { puts 'Before context' }
  before :example { puts 'Before example' }
  
  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end
  
  context 'with condition A' do
    before :context { puts 'INNER Before context' }
    before :example { puts 'INNER Before example' }

    it 'does addition' do
      expect(5 - 1).to eq(4)
    end

    it 'does substraction' do
      expect(5 + 1).to eq(6)
    end
  end
end