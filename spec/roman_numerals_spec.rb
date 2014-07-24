require("rspec")
require("roman_numerals")

describe("roman_numerals") do

  it("user provides a number less than 10 and method returns the correct romman numeral value") do
    roman_numerals(5).should(eq('V'))
  end
end
