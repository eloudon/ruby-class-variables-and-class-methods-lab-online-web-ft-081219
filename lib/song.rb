class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artist =[]
@@genres =[]

  def initialize(artist, genre)
    @@count += 1
    @artist = artist
    @genre = genre

  end

  def self.count
    @@count
  end
end
