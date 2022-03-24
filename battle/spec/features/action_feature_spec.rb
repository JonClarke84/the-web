# I had originally implmented hit points with params. Went back and changed after the Player class was implemented

feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Billy attacked Jimmy'
  end

  scenario 'attack reduced health by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Jimmy: 90HP'
  end

  scenario 'be attacked by Player Two' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play'
    click_button 'Attack'
    expect(page).to have_content 'Jimmy attacked Billy'
  end
end
