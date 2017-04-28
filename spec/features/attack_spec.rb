require 'game'

feature "Attacking" do

    scenario "Attacking player 2" do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content("Chris attacked Ben")
    end

    scenario "reduce player2 hit points by 10" do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content("Ben: 90HP")
    end
  end
