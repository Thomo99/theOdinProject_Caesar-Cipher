def make_og_key()

  alpha = ('a'..'z').to_a
  numbers = (1..26).to_a

  return original_key = Hash[alpha.zip(numbers)]
end

def make_cipher_key()
  alpha = ('a'..'z').to_a
  numbers_plus_five = []
  numbers = (1..26).to_a

  for number in numbers
    if number > 21
      numbers_plus_five.push(number - 21)
    else
      numbers_plus_five.push(number + 5)
    end
  end


  return cipher_key = Hash[alpha.zip(numbers_plus_five)]
end
puts "What to Encrypt:"
original_msg = gets.chomp
og_key = make_og_key
cipher = make_cipher_key
cipher_a = []

original_msg.each_char do |char|
  if char == " "
    cipher_a.push
  else
    num = og_key[char]
    cipher_msg += num.to_s
  end
end

puts cipher_msg