def caesar_cipher(str, factor)
  small_letters = ('a'..'z').to_a
  capital_letters = ('A'..'Z').to_a

  str.chars.map do |c|
    if small_letters.include?(c)
      c = small_letters[(small_letters.find_index(c) + factor) % 26 ]
    elsif capital_letters.include?(c)
      c = capital_letters[(capital_letters.find_index(c) + factor) % 26]
    else
      c = c
    end
  end.join()
end