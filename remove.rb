def removeDigits(n, k)
  arr = n.to_s.split('')
  new_arr = []
  i = 0
  while i < arr.length - k
    num = arr.slice(i, k).reduce(:+).to_i
    new_arr.push(num)
    i += 1
  end
  new_arr.push(arr.slice(-k, k).reduce(:+).to_i)
  new_arr.minmax

end
