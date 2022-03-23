feature 'adding player names' do
  scenario 'Can submit player names and see on screen' do
    visit('/')
    fill_in 'player_one', with: 'Billy'
    fill_in 'player_two', with: 'Jimmy'
    click_button 'Submit'
    expect(page).to have_content 'Billy vs Jimmy'
  end
end
