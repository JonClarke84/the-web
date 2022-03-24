feature 'adding player names' do
  scenario 'Can submit player names and see on screen' do
    sign_in_and_play
    expect(page.html).to include("<div class='grid-item'><h1>Billy</h1></div>
  <div class='grid-item'><h1>vs</h1></div>
  <div class='grid-item'><h1>Jimmy</h1></div>
  <div class='grid-item'>
  </div>")
  end
end
