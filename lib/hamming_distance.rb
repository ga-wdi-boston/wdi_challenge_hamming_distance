class StringsUnequalLength < ArgumentError
end

def hamming_distance(string_1, string_2)
  if string_1.length != string_2.length
     raise StringsUnequalLength
  end

  hamming_distance = 0
  chars_1 = string_1.downcase.chars
  chars_2 = string_2.downcase.chars
  combined_strings = chars_1.zip(chars_2)
  combined_strings.each do |character_place|
    if character_place[0] != character_place[1]
      hamming_distance += 1
    end
  end
  hamming_distance
end

