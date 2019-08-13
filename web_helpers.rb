def create

  #Connects our model with the Database
  connection = PG.connect(dbname: 'bookmark_manager_test')

  # Add the test data
  connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
  connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.askjeeves.com');")
  connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")
  connection.exec("INSERT INTO bookmarks VALUES(4, 'http://www.twitter.com');")


end