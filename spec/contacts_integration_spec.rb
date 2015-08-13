require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the contacts path", {:type => :feature}) do
  it("will display the index page") do
    visit("/")
    expect(page).to have_content("Welcome to the contact list")
  end
end
