# 応用問題 まず1通りかけたら、5通りの別解を考えるところまで
# FizzBuzzを5通りで書いてみる
#  `fizzbuzz(n)`メソッドを定義して、それを呼び出す
# 1から `n` までの数字を順に出力する
# 3の倍数なら`Fizz`、5の倍数なら`Buzz`、15の倍数なら`FizzBuzz`を、数字の代わりに出力する

# Pattern 4: 文字列結合
def fizzbuzz(n)
  (1..n).each do |i|
    output = ''
    output += 'Fizz' if i % 3 == 0
    output += 'Buzz' if i % 5 == 0
    puts output.empty? ? i : output
  end
end

puts fizzbuzz(ARGV[0].to_i)
