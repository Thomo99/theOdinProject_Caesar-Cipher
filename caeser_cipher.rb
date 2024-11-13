# Makes original key
def make_og_key
  alpha = ('a'..'z').to_a
  numbers = (1..26).to_a

  Hash[alpha.zip(numbers)]
end

# Makes +5 cypher key
def make_cipher_key
  alpha = ('a'..'z').to_a
  numbers_plus_five = []
  numbers = (1..26).to_a

  numbers.each do |number|
    if number > 21
      numbers_plus_five.push(number - 21)
    else
      numbers_plus_five.push(number + 5)
    end
  end

  Hash[numbers_plus_five.zip(alpha)]
end
puts 'What to Encrypt:'
original_msg = gets.chomp
og_key = make_og_key
cipher = make_cipher_key
cipher_a = []

original_msg.each_char do |char|
  if char == ' '
    cipher_a.push(' ')
  else
    num = og_key[char]
    cipher_a.push(num)
  end
end

encrypted_msg = ''

cipher_a.each do |num|
  if num == ' '
    encrypted_msg += num
  else
    new_letter = cipher[num]
    encrypted_msg += new_letter
  end
end

print encrypted_msg
