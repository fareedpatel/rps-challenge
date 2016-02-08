feature 'playing the game' do 
	scenario "When I submit Rock, I am told that I have won" do
	allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
	visit '/'
	fill_in('marketeers_name', with:'Sam')
	select('rock', from: 'yourchoice')
	click_button('Play')
	expect(page).to have_content "The result is.... you have won!"
	end
end

