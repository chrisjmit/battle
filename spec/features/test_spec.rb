feature "Testing infrastructure" do

  scenario "Filling in names in a form" do
    visit('/')
    fill_in :player_1_name, with: "Chris"
    fill_in :player_2_name, with: "Sophie"
    click_button "Submit"
    expect(page).to have_content "Chris"
    expect(page).to have_content "Sophie"
  end

  # p feature "table flip a struggle" do
  # p  scenario "submit 'Programming' as a struggle and see the table get flipped" do
  # p    visit("/")
  # p   fill_in :struggle, with: "Programming"
  # p   click_button "Flip table"
  # p     expect(page).to have_content "(Programming!!!)> (╯°□°）╯︵ ┻━┻"

end
