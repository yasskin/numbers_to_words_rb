require('rspec')
require('numbers_to_words.rb')

describe('Fixnum#int_words') do

  it("returns a single word for a number under ten") do
    expect((1).int_words()).to(eq("one"))
  end

  it("return single word from double digit ") do
    expect((11).int_words()).to(eq("eleven"))
  end

  it("return zero from a 0") do
    expect((0).int_words()).to(eq("zero"))
  end

  it("return return a single word for numbers divisible by 10") do
    expect((90).int_words()).to(eq("ninety"))
  end

  it("return a compound number from twenty-one through ninety-nine.") do
    expect((21).int_words()).to(eq("twenty one"))
  end

  it("return a compound number over 100.") do
    expect((101).int_words()).to(eq("one hundred one"))
  end

  it("return a compound number over 200.") do
    expect((320).int_words()).to(eq("three hundred twenty"))
  end

  it("return a compound number over 200.") do
    expect((221).int_words()).to(eq("two hundred twenty one"))
  end

  it("return a compound number over 1000.") do
    expect((1202).int_words()).to(eq("one thousand two hundred two"))
  end

end
