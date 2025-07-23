# 任意の長さのフィボナッチ数列を出力する
# `fibonacci(n)`メソッドを定義して、それを呼び出す
# 正の整数`n`を引数として受け取り、先頭から`n`項のフィボナッチ数列を配列で返す。
def fibonacci(numbers)
  return [] if numbers <= 0
  return [1] if numbers == 1
  series = [1, 1]

  (2...numbers).each do |n|
    next_term = series[n - 1] + series[n - 2]
    series << next_term
  end
  series
end

puts fibonacci(ARGV[0].to_i).join(", ")
