feature Bookmark do
  # scenario 'It return Hello World' do
  #   visit '/'
  #   expect(page).to have_content('Hello World')
  # end

  scenario 'It display a list of bookmarks' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.askjeeves.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES(4, 'http://www.twitter.com');")

    visit '/bookmarks'

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content 'http://www.askjeeves.com'
    expect(page).to have_content 'http://www.twitter.com'
    expect(page).to have_content 'http://www.google.com'
  end

end