feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Billy's turn"
    end
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play'
    expect(page).not_to have_content "Billy's turn"
    expect(page).to have_content "Jimmy's turn"
  end
end
