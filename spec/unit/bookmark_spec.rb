require_relative '../../lib/bookmark.rb'

describe BookmarkModel do
  describe "#all"
    it "show a list of bookmarks" do 
      expect(BookmarkModel.all).to include('abc')
      expect(BookmarkModel.all).to include('def')
      expect(BookmarkModel.all).to include('efg')

    end
end