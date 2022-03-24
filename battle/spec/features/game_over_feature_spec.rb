feature 'Game over' do
  scenario 'when a player has zero hp' do
    sign_in_and_play
    play_ten_times
    expect(page).to have_content 'Game over!'
  end
end
