require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("Word Count Web Interface", {:type => :feature}) do
  it("successfully pulls up index page") do
    visit('/')
    expect(page).to have_content("Word Count")
  end

  it("successfully goes to results page if input is given") do
    visit('/')
    fill_in('phrase', :with => 'this is my phrase')
    fill_in('word', :with => 'this')
    click_button('Find')
    expect(page).to have_content('match')
  end

  it("successfully displays results if input is given") do
    visit('/')
    fill_in('phrase', :with => 'this is my phrase')
    fill_in('word', :with => 'this')
    click_button('Find')
    expect(page).to have_content('1 match')
  end
end
