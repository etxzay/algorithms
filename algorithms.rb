class Algorithms

  def quicksort(array, from, to)
    if from < to
      pivot = partition(array, from, to)
      quicksort(array, from, pivot - 1)
      quicksort(array, pivot + 1, to)
    end
    array
  end

  private

  def partition(array, from, to)
    pivot = array[to]
    i = from - 1
    for j in from..to-1 do
      if array[j] < pivot
        i += 1
        array = swap(array, i, j)
      end
    end

    array = swap(array, i + 1, to)
    return i + 1
  end

  def swap(array, first, second)
    memory = array[first]
    array[first] = array[second]
    array[second] = memory
    array
  end

end
