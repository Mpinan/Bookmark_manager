require_relative '../../lib/bookmark.rb'

describe BookmarkModel do



  describe "#all"
    it "show a list of bookmarks" do 

      connection = PG.connect(:dbname => 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.twitter.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.askjeeves.com');")

      bookmark = BookmarkModel.all

      expect(bookmark).to include('http://www.makersacademy.com')
      expect(bookmark).to include('http://www.askjeeves.com')
      expect(bookmark).to include('http://www.twitter.com')
      expect(bookmark).to include('http://www.google.com')

    end
end