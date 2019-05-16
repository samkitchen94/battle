feature "reducing HP" do
  scenario "it reduces opponents HP by 10" do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content "90HP"
  end
end
