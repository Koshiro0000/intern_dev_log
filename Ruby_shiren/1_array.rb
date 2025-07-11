# 数値を配列で受け取り、合計を計算する
numbers = [123, 456, 789, 234, 567, 789]

def sum_array(numbers)
  numbers.sum
end

sum = sum_array(numbers)
average = sum / numbers.size

puts "Average: #{average}"
