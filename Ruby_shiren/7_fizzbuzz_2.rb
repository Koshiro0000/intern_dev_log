# 応用問題 まず1通りかけたら、5通りの別解を考えるところまで
# FizzBuzzを5通りで書いてみる
#  `fizzbuzz(n)`メソッドを定義して、それを呼び出す
# 1 から `n` までの数字を順に出力する
# 3 の倍数なら`Fizz`、5 の倍数なら`Buzz`、15 の倍数なら`FizzBuzz`を、数字の代わりに出力する

# pattern2（case文を使った場合の条件分岐）
def fizzbuzz(n)
  (1..n).each do |i|
    case
    when i % 15 == 0 then puts "FizzBuzz"
    when i % 5 == 0  then puts "Buzz"
    when i % 3 == 0  then puts "Fizz"
    else puts i
    end
  end
end

puts fizzbuzz(ARGV[0].to_i)

# pattern3（三項演算子）
def fizzbuzz(n)
  (1..n).each do |i|
    puts (i % 15 == 0) ? "FizzBuzz" :
         (i % 5 == 0)  ? "Buzz" :
         (i % 3 == 0)  ? "Fizz" : i
  end
end

puts fizzbuzz(ARGV[0].to_i)
