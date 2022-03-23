def sign_in_and_play
  visit('/')
  fill_in 'player_one', with: 'Billy'
  fill_in 'player_two', with: 'Jimmy'
  click_button 'Submit'
end
