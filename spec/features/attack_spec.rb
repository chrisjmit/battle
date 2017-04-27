require 'game'

feature "Attacking" do

    scenario "Attacking player 2" do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content("#{@game.player_1.name} attacked #{@game.player_2.name}!!!")
    end
    
    scenario "reduce player2 hit points by 10" do
      sign_in_and_play
      click_button("Attack")
      expect(page).to have_content("#{@game.player_2.name}: 90HP")
    end
  end
