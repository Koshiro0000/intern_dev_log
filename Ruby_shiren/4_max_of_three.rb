# 3つの数値を受け取り、最大値を計算する
# `max_of_three(a, b, c)`メソッドを定義して、それを呼び出す
# 3つの数値を引数として受け取り、それらのうち最大のものを`Max： #{最大の数値}`の形式で返す

def max_of_three(a, b, c)
  max_value = [a, b, c].max
end

a, b, c = ARGV.map(&:to_i)
puts "Max: #{max_of_three(a, b, c)}" 
