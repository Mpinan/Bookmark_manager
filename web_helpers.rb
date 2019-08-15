def insert

  #Connects our model with the Database
  

  # Add the test data
  BookmarkModel.create(url: 'http://www.makersacademy.com')
  BookmarkModel.create(url:'http://www.askjeeves.com')
  BookmarkModel.create(url: 'http://www.google.com')
  BookmarkModel.create(url: 'http://www.twitter.com')


end