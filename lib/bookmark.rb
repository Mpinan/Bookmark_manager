require 'pg'

class BookmarkModel 
  def self.all

      
    connection = PG.connect(:dbname => 'bookmark_manager')
      
    result = connection.exec "SELECT * FROM bookmarks;"

    result.map do |row|
      row['url'] 
    end
  end
end