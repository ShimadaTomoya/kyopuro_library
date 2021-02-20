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

# 組み合わせ（nCr）
def combination(n,r)
  factorial(n) / (factorial(r)*(factorial(n-r)))
end

# 基数変換
# nをkisuu進数としてみたときの値を10進数で返す
def kisuu_henkan(n, kisuu)
  ans = 0
  n.to_s.split('').reverse.each.with_index do |i, ks|
    ans += i.to_i * (kisuu**ks)
  end
  ans
end
