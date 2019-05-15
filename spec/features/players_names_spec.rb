feature "Testing Players names in forms" do
  scenario "it allows players to enter their names" do
    visit('/')
    fill_in :player_1_name, with: 'Sam'
    fill_in :player_2_name, with: 'Yemi'
    click_button 'Submit'
    expect(page).to have_content 'Sam vs Yemi'
  end
end
