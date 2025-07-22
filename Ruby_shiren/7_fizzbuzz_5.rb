# 応用問題 まず1通りかけたら、5通りの別解を考えるところまで
# FizzBuzzを5通りで書いてみる
#  `fizzbuzz(n)`メソッドを定義して、それを呼び出す
# 1 から `n` までの数字を順に出力する
# 3 の倍数なら`Fizz`、5 の倍数なら`Buzz`、15 の倍数なら`FizzBuzz`を、数字の代わりに出力する

# Pattern 5: 文字列結合

def fizzbuzz(n)
  rules = { 3 => 'Fizz', 5 => 'Buzz' }
    (1..n).each do |i|
      output = rules.map { |k, v| v if i % k == 0 }.compact.join
      puts output.empty? ? i : output
    end
end

puts fizzbuzz(ARGV[0].to_i)
