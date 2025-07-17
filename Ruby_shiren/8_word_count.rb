# 長文を引数に渡すと、単語ごとに出現回数をカウントしてくれる
# `word_frequency(sentence)`メソッドを定義して、それを呼び出す
# 引数の文字列を単語（空白区切り）で分割して出現回数をハッシュ `{ word => count }` で返す。
# 引数は英語に限る

def word_frequency(sentence)
  words = sentence.split(' ')
  frequency = Hash.new(0)
  words.each do |word|
    if frequency.key(word)
      frequency[word] += 1
    else
      frequency[word] = 1
    end
  end
  frequency
end

puts word_frequency(ARGV[0])
