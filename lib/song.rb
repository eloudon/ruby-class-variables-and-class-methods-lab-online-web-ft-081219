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

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

ninety_nine_problems.name
  # => "99 Problems"

ninety_nine_problems.artist
  # => "Jay-Z"

ninety_nine_problems.genre
  # => "rap"
