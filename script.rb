def r
  load './script.rb'
end

def caesar_cipher(string, shift)
  string.chars.map do |char|
    if char.between?('a', 'z')
      base = 'a'.ord
      (((char.ord - base + shift) % 26) + base).chr
    elsif char.between?('A', 'Z')
      base = 'A'.ord
      (((char.ord - base + shift) % 26) + base).chr
    else
      char
    end
  end.join
end
