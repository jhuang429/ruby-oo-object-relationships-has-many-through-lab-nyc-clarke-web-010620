class Genre
    def initialize(name)
        @name = name
        @@all << self
    end

    @@all = []
    attr_accessor :name

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        self.songs.map do |song|
            song.artist
        end
    end




end
