def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Sam'
  fill_in :player_2_name, with: 'Yemi'
  click_button 'Submit'
end
