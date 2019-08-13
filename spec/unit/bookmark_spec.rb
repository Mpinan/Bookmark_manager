require_relative '../../lib/bookmark.rb'

describe BookmarkModel do
  describe "#all"
    it "show a list of bookmarks" do 
      expect(BookmarkModel.all).to include('http://www.makersacademy.com')
      expect(BookmarkModel.all).to include('http://www.askjeeves.com')
      expect(BookmarkModel.all).to include('http://www.twitter.com')
      expect(BookmarkModel.all).to include('http://www.google.com')

    end
end