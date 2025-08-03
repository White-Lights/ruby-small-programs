def cipher(str, shift_num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  return str.split("").map{ |char|
      index = alphabet.index(char.downcase)
      if index == nil
        char
      else
        char === char.upcase ? alphabet[(index + shift_num) % 26].upcase : alphabet[(index + shift_num) % 26]
      end }.join("")
end