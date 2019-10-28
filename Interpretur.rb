f = File.open("numbers.txt", "r")

numbers = []

f.each_line { |line|
  numbers.push(line)
}
f.close

final = 0

for i in numbers

  if i[0] == "-"
    final -= i.to_i.abs
  else
    final += i.to_i.abs
  end

end

puts final
