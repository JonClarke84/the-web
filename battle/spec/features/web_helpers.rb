def sign_in_and_play
  visit('/')
  fill_in 'player_one', with: 'Billy'
  fill_in 'player_two', with: 'Jimmy'
  click_button 'Submit'
end

def play_ten_times
  count = 0
  while count < 10
    play_round
    count += 1
  end
end

def play_round
  click_button 'Attack'
  click_button 'Play'
  click_button 'Attack'
  click_button 'Play'
end
