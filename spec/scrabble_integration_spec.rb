require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the score of a scrabble word', {:type => :feature}) do
  it('calculates score of a scrabble word') do
    visit('/')
    fill_in('score', :with => 'quixotic')
    click_button('Send')
    expect(page).to have_content(26)
  end
end
