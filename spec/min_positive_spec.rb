require 'algorithms'

RSpec.describe Algorithms::MinPositive do

  it '[1, 3, 6, 4, 1, 2]' do
    expect(Algorithms::MinPositive.call([1, 3, 6, 4, 1, 2])).to eq(5)
  end

  it '[1, 2, 3]' do
    expect(Algorithms::MinPositive.call([1, 2, 3])).to eq(4)
  end

  it '[−1, −3]' do
    expect(Algorithms::MinPositive.call([-1,-3])).to eq(1)
  end
end

