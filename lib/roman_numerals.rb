def roman_numerals(input)

  hash ={"I"=>1,"V"=>5,"X"=>10,"L"=>50,"C"=>100,"D"=>500,"M"=>1000}
  rawCount = []
  remainder = 0

    if (input / hash["M"] > 0)
      rawCount.push(input / hash["M"])
      remainder = input % hash["M"]
    end

    if (input / hash["D"] > 0)
      rawCount.push(remainder / hash["D"])
      remainder = remainder % hash["D"]
    end

    if (input / hash["C"] > 0)
      rawCount.push(remainder / hash["C"])
      remainder = remainder % hash["C"]
    end

    if (input / hash["L"] > 0)
      rawCount.push(remainder / hash["L"])
      remainder = remainder % hash["L"]
    end

    if (input / hash["X"] > 0)
      rawCount.push(remainder / hash["X"])
      remainder = remainder % hash["X"]
    end
    if (input / hash["V"] > 0)
      rawCount.push(remainder / hash["V"])
      remainder = remainder % hash["V"]
    end

    if (input / hash["I"] > 0)
      rawCount.push(remainder / hash["I"])
      remainder = remainder % hash["I"]
    end

   rawCount.each do |i|
   p rawCount[i]
  end
  # result = hash.key(input)
  # result
  p rawCount
  p remainder
end
roman_numerals(4999)

# 4 => IV
# 1 = I
# 2 = II
# 3 = III
# 4 = IV
