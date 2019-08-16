def insert

  #Connects our model with the Database
  

  # Add the test data
  BookmarkModel.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
  BookmarkModel.create(url: 'http://www.askjeeves.com', title: 'Jeeves')
  BookmarkModel.create(url: 'http://www.google.com', title: 'Google')
  BookmarkModel.create(url: 'http://www.twitter.com', title: 'Twitter')


end

require 'pg'

def persisted_data(id:)
  connection = PG.connect(dbname: 'bookmark_manager_test')
  result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end