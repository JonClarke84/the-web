feature 'Game over' do
  scenario 'when a player has zero hp' do
    sign_in_and_play
    play_nine_times
    click_button 'Attack'
    click_button 'Play'
    expect(page).to have_content 'GAME OVER!'
  end
end
