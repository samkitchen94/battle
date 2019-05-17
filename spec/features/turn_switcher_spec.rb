feature "Switching turns" do
  scenario "at the start of the game" do
    sign_in_and_play
    expect(page).to have_content "Sam's turn"
  end


  scenario "user switches turns after attacking" do
    sign_in_and_play
    click_button('Attack')
    expect(page).not_to have_content "Sam's turn"
    expect(page).to have_content "Yemi's turn"
  end
end
