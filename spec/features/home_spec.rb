require './web_helpers.rb'

feature Bookmark do
  feature 'Showing a list of bookmarks' do
    scenario 'It display a list of bookmarks' do

      insert

      visit '/bookmarks'

      expect(page).to have_link('Makers Academy', href: "http://www.makersacademy.com")
      expect(page).to have_link('Jeeves', href: 'http://www.askjeeves.com')
      expect(page).to have_link('Twitter', href: 'http://www.twitter.com')
      expect(page).to have_link('Google', href: 'http://www.google.com')
    end
  end
  feature 'Adding a new bookmark' do
    scenario 'A user is able to add a new bookmard' do
      visit('/bookmarks/new')
      fill_in('url', with: 'http://testbookmark.com')
      fill_in('title', with: 'Test Bookmark')
      click_button('Submit')
      expect(page).to have_link('Test Bookmark', href: 'http://testbookmark.com')
    end
  end
end