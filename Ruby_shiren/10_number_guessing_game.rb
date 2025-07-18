# 数当てゲーム(ランダムに選んだ数字をユーザーが当てるゲームをつくる)
# ランダムに 1～100 の数を選び、コンソール入力でユーザーに当てさせる。
# `gets.chomp.to_i` で入力を受け取り、回答が高いか低いかヒントを出す
# ユーザーが選ばれた数字を当てるまで繰り返す

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
    puts "正解です！"
    break
  end
end
