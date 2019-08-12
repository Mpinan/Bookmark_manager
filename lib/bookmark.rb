require 'pg'

class BookmarkModel 
  def self.all
      
      con = PG.connect :dbname => 'bookmark_manager', :user => 'student'
      
      rs = con.exec "SELECT * FROM bookmarks LIMIT 3"

      @txt = ""

      rs.each do |row|
        @txt +=  '%s %s' % [ row['id'], row['url']]
      end

    #rescue PG::Error => e

      #puts e.message
      

    #ensure 

      con.close if con
      @txt
      

    #end

  end
end