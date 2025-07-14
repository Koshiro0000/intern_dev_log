# 受け取った数字の偶奇を判定する
# コマンドライン引数で整数を 1 つ受け取る
# その値が偶数なら `Even`、奇数なら `Odd` を出力
# 引数がない、または整数でない場合は `Please provide an integer` を出力して終了

def odd_even_check(input)
  if input.nil? || input.to_i.to_s != input
    puts "Please provide an integer"
  else
    number = input.to_i
    if
      number.odd_even
      puts "Even"
    else
      puts "Odd"
    end
  end
end

input = ARGV[0]
odd_even_check(input)
