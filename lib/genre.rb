
class Genre

    attr_reader :name 
    attr_accessor 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
       
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        songs.map do |song|
            song.artist
        end
    end
    

end