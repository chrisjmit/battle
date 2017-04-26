feature "Testing infrastructure" do

  scenario "Can run app and check page content" do
    visit("/")
    expect(page).to have_content "Testing infrastructure working!"
  end

  scenario "Filling in names in a form" do
    visit('/')
    fill_in :name, with: "Chris"
    click_button "Submit"
      expect(page).to have_content "Chris"
  end

  # p feature "table flip a struggle" do
  # p  scenario "submit 'Programming' as a struggle and see the table get flipped" do
  # p    visit("/")
  # p   fill_in :struggle, with: "Programming"
  # p   click_button "Flip table"
  # p     expect(page).to have_content "(Programming!!!)> (╯°□°）╯︵ ┻━┻"

end
