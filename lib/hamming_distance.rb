class StringsUnequalLength < ArgumentError
end

def hamming_distance(string_1, string_2)
  countDiff = 0
  ind = 0
  if string_1.length == string_2.length #Error
    if string_1 == string_2 #Checks equal string
      countDiff
    else #Count different character.
      arr_1 = string_1.split("")
      arr_2 = string_2.split("")

      arr_1.each do |letter1|
        letter2= arr_2[ind]
        if letter1 != letter2
          countDiff += 1
        end
      ind += 1
      end
    countDiff
    end
  else
    raise StringsUnequalLength
  end
end

