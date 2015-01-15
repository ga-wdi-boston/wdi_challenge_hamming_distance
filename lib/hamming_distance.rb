class StringsUnequalLength < ArgumentError
end

def hamming_distance(string_1, string_2)
  string_one = string_1.scan /\w/
  string_two = string_2.scan /\w/
  difference = 0
  if string_1.length != string_2.length
    raise StringsUnequalLength
  end
  string_one.each do |a|
    index = 0
    if a != string_two[index]
      index +=1
      difference +=1
    end
  end
  return difference
end

