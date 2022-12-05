# Fibonacci sequence, which sums each number with the one before it.

# fibs
# @params - number: total number of fibonacci sequence
# @return - array: numbers from fibonacci sequence, eg. [0, 1, 1, 2, 3, 5, 8, 13]

# iteration
def fibs(number)
  array = [0, 1]
  i = 0
  while array.size < number
    array.push(array[i] + array[i + 1])
    i += 1
  end
  array
end

print fibs(8)

# recursive
def fibs_rec(number)
  return if number.zero?
  return [0] if number == 1
  return [0, 1] if number == 2

  array = fibs_rec(number - 1)
  array << array[-1] + array[-2]
end

print fibs_rec(8)
