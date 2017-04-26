feature "Attacking" do
  scenario "Attacking player 2" do
    sign_in_and_play
    click_button("Attack")
  expect(page).to have_content("Chris attacked Sophie!!!")
  end
end
