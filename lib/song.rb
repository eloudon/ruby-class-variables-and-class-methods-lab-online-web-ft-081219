class Song

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @@artists << artist
      @genre = genre
      @@genres << genre
      @@count += 1
    end

    @@count = 0
    @@genres = []
    @@artists = []
    
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, a| total[a] += 1 ;total}
  end

  def self.artists
    @@artists.uniq
  end

end


puts the_day.name
puts the_day.artist
puts the_day.genre
puts Song.count
Song.genres
Song.artists
Song.genre_count
Song.artist_count
