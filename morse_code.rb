def decode_char(char)
  morse_chars_codes = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_chars_codes.each do |key, value|
    return value if key == char
  end
end

def decode_word(word)
  str = ''
  word.split.each do |n|
    str += decode_char(n)
  end
  str
end

def decode(msg)
  msg_split = msg.split('  ')
  msg_sentence = ''
  msg_split.each do |word|
    msg_sentence += "#{decode_word(word)} "
  end
  msg_sentence
end

print decode_char('.-')
print decode_word('-- -.--')
print decode('-- -.--   -. .- -- .')
print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
