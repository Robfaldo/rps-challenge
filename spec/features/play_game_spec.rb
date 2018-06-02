# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  scenario 'user gets to end of game' do
    # Setup
    log_in_and_play
    # Exercise - user clicks rock
    click_button('rock')
    # Verification - user wins
    expect(page).to have_content("Results are in!")
  end

  def log_in_and_play
    visit("/")
    fill_in('name', with: 'Rob')
    click_button('Begin Game')
  end
end
