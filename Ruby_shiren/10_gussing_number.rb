# fizzbuzzのゲーム

random_number = rand(1..100)

puts "1から100の数字を当ててください。"

loop do
  print "数字を入力: "
  user_input = gets.chomp.to_i

  if user_input < random_number
    puts "もっと大きい数字です。"
  elsif user_input > random_number
    puts "もっと小さい数字です。"
  else
    puts "正解です！ #{attempts} 回目の試行で当てました！"
    break
  end
end
