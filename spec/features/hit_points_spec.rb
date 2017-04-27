feature "Hit points" do
  scenario "Viewing hit points" do
    sign_in_and_play
  expect(page).to have_content("Ben: 60 HP")
  end
end
