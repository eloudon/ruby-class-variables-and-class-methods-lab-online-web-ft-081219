class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artist =[]
@@genre =[]

  def initialize(artist, genre)
    @@count += 1
    @artist = artist
    if !(@@artist.include? @artist)
      @@artist << @artist
    end
    @genre = genre
    if !(@@genre.include? (@genre))
      @@genre << @genre
    end
  end

  def self.count
    @@count
  end
end
