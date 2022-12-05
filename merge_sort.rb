def merge_sort(array)
  return array if array.size == 1

  left = merge_sort(array[0, array.size / 2])
  right = merge_sort(array[array.size / 2, array.size])

  merge(left, right)
end

def merge(left, right)
  sorted = []
  while !left.empty? && !right.empty?
    sorted << if left.first < right.first
                left.shift
              else
                right.shift
              end
  end
  sorted + left + right
end

puts merge_sort([6, 8, 1, 2])
