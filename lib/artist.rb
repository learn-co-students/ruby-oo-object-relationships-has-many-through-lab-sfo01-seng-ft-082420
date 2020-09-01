class Artist

    attr_accessor :name

    @@all = []

    # initialize 
    def initialize(name)
        @name = name

        @@all << self
    end

    # call the @@all array
    def self.all 
        @@all
    end

    # takes in an argument of a name and genre creates a new song
    # 
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    # iterates through all songs and finds the songs that belong to that artist
    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        songs.map{|song| song.genre}
    end
end