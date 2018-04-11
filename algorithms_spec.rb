require './algorithms.rb'

RSpec.describe Algorithms do

  let(:sample) { [3, 7, 8, 5, 2, 1, 9, 5, 4] }

  describe '#quicksort' do

    subject { Algorithms.new.quicksort(sample, 0, sample.size - 1) }

    it 'sorts array sample' do
      expect(subject).to eq(sample.sort)
    end

  end

end
