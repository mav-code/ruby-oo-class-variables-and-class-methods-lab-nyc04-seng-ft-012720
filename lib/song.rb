class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        output = Hash.new(0)
        @@genres.each { |genre| output[genre] += 1 }
        return output
    end

    def self.artist_count
        output = Hash.new(0)
        @@artists.each { |artist| output[artist] += 1 }
        return output
    end
end