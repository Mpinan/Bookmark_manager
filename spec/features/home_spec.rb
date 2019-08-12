feature Bookmark do
  # scenario 'It return Hello World' do
  #   visit '/'
  #   expect(page).to have_content('Hello World')
  # end

  scenario 'It display a list of bookmarks' do
    visit '/'
    click_button('Show Bookmarks')
    expect(page).to have_content('abc')
    expect(page).to have_content('def')
    expect(page).to have_content('efg')
  end

end