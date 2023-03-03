MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9'
}.freeze

def deco_char(char)
  MORSE_CODE[char]
end

# Decode char
puts deco_char('--...') # 7

def decode_word(word)
  word.split.map { |char| deco_char(char) }.join
end

# Decode word
puts decode_word('-- -.--') # MY
puts decode_word('-. .- -- .') # NAME

def decode(text)
  text.split('   ').map { |word| decode_word(word) }.join(' ')
end

# Decode text
puts decode('-- -.--   -. .- -- .') # MY NAME

# MY NAME
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
