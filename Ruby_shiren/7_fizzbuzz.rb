# FizzBuzzを5通りで書いてみる
#  `fizzbuzz(n)`メソッドを定義して、それを呼び出す
# 1 から `n` までの数字を順に出力する
# 3 の倍数なら`Fizz`、5 の倍数なら`Buzz`、15 の倍数なら`FizzBuzz`を、数字の代わりに出力する

def fizzbuzz(n)
 (1...n).each do |n|
    if n % 15 == 0
        puts "FizzBuzz"
    elsif n % 5 == 0
        puts "Buzz"
    elsif n % 3 == 0
        puts "Fizz"
    else
        puts n
    end
 end
end

puts fizzbuzz(ARGV[0].to_i)
