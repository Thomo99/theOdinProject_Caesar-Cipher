def make_og_key()

  alpha = ('a'..'z').to_a
  numbers = (1..26).to_a

  return original_key = Hash[alpha.zip(numbers)]
end

def make_cipher_key()
  alpha = ('a'..'z').to_a
  numbers_plus_five = []

  for number in numbers
    if number > 21
      numbers_plus_five.push(number - 21)
    else
      numbers_plus_five.push(number + 5)
    end
  end


  return cipher_key = Hash[alpha.zip(numbers_plus_five)]
end

def get_user_input()
  original_string = 
end