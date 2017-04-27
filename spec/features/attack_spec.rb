require 'game'

feature "Attacking" do

    scenario "Attacking player 2" do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content("#{@player_1_name} attacked #{@player_2_name}!!!")
    end

    scenario "reduce player2 hit points by 10" do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content("#{@player_2_name}: 90HP")
    end
  end
