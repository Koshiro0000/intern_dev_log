#文字列を引数として受け取り、組み合わせて出力する
def say_hello(name)
  puts "hello #{name}"
end

say_hello(ARGV[0])
