# Checks if the given ASCII value represents a standard punctuation mark
def basic_punctuation(number)
  number.between?(33, 47)
end

def caesar_cipher(string, shift_number)
  ascii_array = string.bytes

  right_shift = ascii_array.map do |ascii|
    if ascii == 32
      ascii = ascii
    elsif basic_punctuation(ascii)
      ascii = ascii
    else
      # Wrap character from 'z' back to 'a' to maintain alphabetical rotation
      base = ascii < 91 ? 65 : 97
      shift = (ascii - base + shift_number)  % 26 + base 
      ascii = shift 
    end
  end
  
  right_shift.pack("C*") # Reconstruct string from the modified array of ASCII codes
end

puts caesar_cipher("What a string!", 5)
