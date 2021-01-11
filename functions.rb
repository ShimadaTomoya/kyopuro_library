# 配列を渡して累積和配列を返す
def ruisekiwa_array(array)
  tmp = [0]
  for i in 0...(array.size)
    tmp << tmp[i] + array[i]
  end
  tmp
end

# 階乗
def factorial(n)
  tmp = 1
  n.downto(2) {|i| tmp *= i}
  tmp
end

