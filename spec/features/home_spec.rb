feature Bookmark do
  # scenario 'It return Hello World' do
  #   visit '/'
  #   expect(page).to have_content('Hello World')
  # end

  scenario 'It display a list of bookmarks' do
    visit '/'
    click_button('Show Bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content 'http://www.askjeeves.com'
    expect(page).to have_content 'http://www.twitter.com'
    expect(page).to have_content 'http://www.google.com'
  end

end