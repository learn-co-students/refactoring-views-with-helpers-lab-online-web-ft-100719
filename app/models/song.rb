class Song < ActiveRecord::Base
  belongs_to :artist


  def artist_name=(name)
    #binding.pry
    a = Artist.find_or_create_by(name: name)
    self.artist = a
  end

  def artist_name
    artist.name if artist
  end

  
end
