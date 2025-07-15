#2つの文字列を受け取り、回文か判定する
#`palindrome?(str)`メソッドを定義して、それを呼び出す#
#ふたつの文字列を引数として受け取り、それらが回文になっているかどうかを真偽値で返す

def palindrome?(str)
    str == str.reverse
end 

puts palindrome?(ARGV[0])
