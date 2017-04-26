feature "Testing infrastructure" do

  scenario "Filling in names in a form" do
    visit('/')
    fill_in :player_1_name, with: "Chris"
    fill_in :player_2_name, with: "Sophie"
    click_button "Submit"
    expect(page).to have_content "Chris"
    expect(page).to have_content "Sophie"
  end

  scenario "Viewing hit points" do
    visit('/')
    fill_in :player_1_name, with: "Sophie"
    fill_in :player_2_name, with: "Chris"
    click_button "Submit"
    expect(page).to have_content("Chris: 60 HP")
  end

end
