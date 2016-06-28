require('rspec')
require('numbers_to_words.rb')

describe('Fixnum#int_words') do

  it("returns a single word for a number under ten") do
    expect((1).int_words()).to(eq("one"))
  end

end
