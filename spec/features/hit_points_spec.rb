feature "Hit points" do
  scenario "Viewing player 2's hit points" do
    sign_in_and_play
  expect(page).to have_content("Ben: 100HP")
  end

  scenario "Viewing player 1's hit points" do
    sign_in_and_play
  expect(page).to have_content("Chris: 100HP")
  end

end
