feature "Testing infrastructure" do

  scenario "Filling in names in a form" do
    visit('/')
    fill_in :player_1_name, with: "Chris"
    fill_in :player_2_name, with: "Sophie"
    click_button "Submit"
    expect(page).to have_content "Chris"
    expect(page).to have_content "Sophie"
  end

end
