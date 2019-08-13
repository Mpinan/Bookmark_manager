require_relative '../../lib/bookmark.rb'
require './web_helpers.rb'

describe BookmarkModel do

  describe "#all"
    it "show a list of bookmarks" do 

      create

      bookmark = BookmarkModel.all

      expect(bookmark).to include('http://www.makersacademy.com')
      expect(bookmark).to include('http://www.askjeeves.com')
      expect(bookmark).to include('http://www.twitter.com')
      expect(bookmark).to include('http://www.google.com')

    end
end