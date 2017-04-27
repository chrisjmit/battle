require 'game'

feature "Attacking" do

  let (:player_1)  { double :player_1_name, name: :player_1 }
  let (:player_2)  { double :player_2_name, name: :player_2 }

    scenario "Attacking player 2" do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content("#{player_1} attacked #{player_2}")
    end

    scenario "reduce player2 hit points by 10" do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content("Ben: 90HP")
    end
  end
