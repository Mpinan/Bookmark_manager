require 'pg'

class BookmarkModel 
  def self.all
    
    if ENV['ENVIRONMENT'] = 'test'
      connection = PG.connect(:dbname => 'bookmark_manager_test')
    else
      connection = PG.connect(:dbname => 'bookmark_manager')
    end

    result = connection.exec "SELECT * FROM bookmarks;"

    result.map do |row|
      row['url'] 
    end

  end
end