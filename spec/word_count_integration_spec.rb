require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("Word Count Web Interface", {:type => :feature}) do
  it("successfully pulls up index page") do
    visit('/')
    expect(page).to have_content("Word Count")
  end
end
