require 'byebug'

$alphabet = ('a'..'z').to_a

def caesar_cipher(string, shift_factor)
  cipher = create_cipher(shift_factor)
  words = string.split
  words.map { |word| encrypt_word(word, cipher) }.join(" ")
end

def create_cipher(shift_factor)
  cipher = Hash.new()
  $alphabet.each_with_index { |char, index| cipher[char] = index }
  cipher.each { |key, value| cipher[key] += shift_factor }
  cipher.each { |key, value| cipher[key] -= 26 if value > 25 }
  cipher
end

def encrypt_word(word, cipher)
  chars = word.split("")
  new_chars = chars.map do |char|
    if $alphabet.include?(char.downcase)
      new_pos = cipher[char.downcase]
      if char == char.upcase
        char = $alphabet[new_pos].upcase
      else
        char = $alphabet[new_pos]
      end
    end
    char
  end
  new_chars.join
end