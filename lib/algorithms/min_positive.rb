module Algorithms
  class MinPositive

    def self.call(a)
      # remove negatives
      b = a.select{|x| x > 0 }

      # mark presense of element X by changing value at index X to negative
      b.each_index do |i|
        if (b[i].abs - 1) < b.size && b[b[i].abs - 1] > 0
          b[b[i].abs - 1] = -b[b[i].abs - 1]
        end
      end

      # get index of the first positive
      b.each_index do |i|
        if b[i] > 0
          return i + 1
        end
      end

      return b.size + 1
    end

  end
end
