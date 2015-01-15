class StringsUnequalLength < ArgumentError
end

def hamming_distance(string_1, string_2)
  word1 = string_1.chars
  word2 = string_2.chars
  if word1.length != word2.length
    raise StringsUnequalLength
  end
  ham = 0
  for i in 0..(word1.length)-1
    if word1[i] != word2[i]
      ham += 1
    end
  end
  return ham
end
