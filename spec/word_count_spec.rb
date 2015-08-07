require ('rspec')
require ('word_count')

describe("String#word_count") do
  it("it returns 0 if no argument given") do
    expect("word's wordy, word.".word_count()).to(eq(""))
  end
end
