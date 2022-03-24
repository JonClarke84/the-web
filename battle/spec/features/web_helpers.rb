def sign_in_and_play
  visit('/')
  fill_in 'player_one', with: 'Billy'
  fill_in 'player_two', with: 'Jimmy'
  click_button 'Submit'
end

def play_ten_times
  count = 0
  play_round while count < 11
end

def play_round
  click_button 'Attack'
  click_button 'Play'
  click_button 'Attack'
  click_button 'Play'
end
