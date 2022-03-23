feature 'adding player names' do
  scenario 'Can submit player names and see on screen' do
    sign_in_and_play
    expect(page).to have_content 'Billy vs Jimmy'
  end
end
