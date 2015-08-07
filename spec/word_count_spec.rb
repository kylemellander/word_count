require ('rspec')
require ('word_count')

describe("String#word_count") do

  it("returns 0 if no argument given") do
    expect("word".word_count()).to(eq(0))
  end

  it("returns 0 if no words match in single word strings") do
    expect("word".word_count("new")).to(eq(0))
  end

  it("returns correct response when matches are found with the same object and argument") do
    expect("word".word_count("word")).to(eq(1))s
  end
end
