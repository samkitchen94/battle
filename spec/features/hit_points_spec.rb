feature "Testing hit points" do
  scenario "allows users to see opponents hit points" do
    visit('/')
    fill_in :player_1_name, with: 'Sam'
    fill_in :player_2_name, with: 'Yemi'
    click_button 'Submit'
    expect(page).to have_content "Yemi: 100HP"
  end
end
