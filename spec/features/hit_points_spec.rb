feature "Testing hit points" do
  scenario "allows users to see opponents hit points" do
    sign_in_and_play
    expect(page).to have_content "Yemi: 100HP"
  end
end
