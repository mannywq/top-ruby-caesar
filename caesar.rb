def caesar_cipher(str, factor)
  new_str = []
  alphabet = ('a'..'z').to_a

  str.split('').map do |char|
    if alphabet.include? char
      index = (alphabet.index(char) + factor) % 26

      new_str << alphabet[index]

    elsif alphabet.include? char.downcase
      index = (alphabet.index(char.downcase) + factor) % 26

      new_str << alphabet[index].upcase

    else

      new_str << char
    end
  end

  new_str.join
end

puts caesar_cipher 'Hello guys how are you?', 3
