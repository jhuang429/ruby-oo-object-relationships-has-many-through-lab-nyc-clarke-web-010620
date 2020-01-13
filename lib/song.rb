class Song
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    @@all = []
     attr_accessor :name, :genre, :artist

    def self.all
        @@all
    end



end
