require './stock_picker'

describe '#stock_picker' do
  it 'finds the best day to sell/buy the stock' do
    expect((stock_picker([17,3,6,9,15,8,6,1,10]))).to eq([1,4])
  end
  it 'finds the best day to sell/buy the stock when the highest day is the first day' do
    expect((stock_picker([30,3,2,9,15,8,6,4,20]))).to eq([2,8])
  end
  it 'finds the best day to sell/buy the stock when the lowest day is the last day' do
    expect((stock_picker([16, 4, 12, 1]))).to eq([1,2])
  end
  it 'returns "Dont buy stock!" if the stock price only ever decreases' do
    expect((stock_picker([25, 10, 5, 1]))).to eq("Don't buy stock!")
  end
end