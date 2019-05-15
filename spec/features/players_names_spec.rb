feature "Testing Players names in forms" do
  scenario "it allows players to enter their names" do
    sign_in_and_play
    expect(page).to have_content 'Sam vs Yemi'
  end
end
