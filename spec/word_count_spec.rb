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
    expect("word".word_count("word")).to(eq(1))
  end

  it("returns the correct response on matching words in a multiple word object") do
    expect("this is my phrase that is right".word_count("is")).to(eq(2))
  end

  it("properly finds matches that are adjacent to punctuation") do
    expect('This "is" my phrase. That it is.'.word_count("is")).to(eq(2))
  end

  it("returns the correct response on matching words with different case") do
    expect("this iS my phrase that is right".word_count("Is")).to(eq(2))
  end
end
