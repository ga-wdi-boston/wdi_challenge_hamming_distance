class StringsUnequalLength < ArgumentError
end

def hamming_distance(string_1, string_2)
  string_one = string_1.scan /\w/
  string_two = string_2.scan /\w/
  distance = 0
  if string_one.length != string_two.length
    raise StringsUnequalLength
  end
  string_one.each do |char|
    index = 0
    if char == string_two[index]
        index = index + 1
    else
        distance = distance + 1
        index = index + 1
    end
  end
  return distance
end

