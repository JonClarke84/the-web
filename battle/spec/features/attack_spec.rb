# I had originally implmented hit points with params. Went back and changed after the Player class was implemented

feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Billy attacked Jimmy'
  end
end
