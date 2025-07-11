# 文字列を逆順にする
# `reverse_string(str)`メソッドを定義して、それを呼び出す
# 文字列を引数として受け取り、それを逆順にした文字列を返す
str = "こんにちは"

def reverse_string(str)
  str.reverse
end

reversed_str = reverse_string(str)
puts "Reversed string: #{reversed_str}"
