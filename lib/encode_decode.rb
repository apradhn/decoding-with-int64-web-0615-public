require "pry"

def encode_int64(message)
  h = 7
  letters = "acdegilmnoprstuw"
  i = 0
  while i < message.length
    if letters.include?(message[i])
      h = (h * 37 + letters.index(message[i]))
      i += 1
    else
      return "The word should only contain letters in acdegilmnoprstuw"
    end
  end
  h
end

def decode_int64(code)
  letters =  "acdegilmnoprstuw"
  quotient = code / 37
  remainder = code % 37
  if quotient == 7
    letters[remainder]
  else
    decode_int64(quotient) + letters[remainder]
  end
end