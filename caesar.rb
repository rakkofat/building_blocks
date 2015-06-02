# http://www.theodinproject.com/ruby-programming/building-blocks
# Project 1: Caesar Cipher
# Implement a caesar cipher that takes in a string and the shift factor and
# then outputs the modified string.

def caesar_cipher(msg, key)
  key %= 26
  msg.split('').map {|char| encode(char, key)}.join('')
end

def encode(char, key)
  if char.between?('a','z') || char.between?('A','Z')
    return shifter(char, key)
  else
    return char
  end
end

def shifter(char, key)
  shifted = char.ord + key
  unless shifted.between?('a'.ord,'z'.ord) || shifted.between?('A'.ord, 'Z'.ord)
    shifted -= 26
  end
  shifted.chr
end
