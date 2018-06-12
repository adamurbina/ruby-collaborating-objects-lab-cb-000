class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        self.all.each { |artist|
            if artist.name == name
                return artist
            end}
        self.new(name)
    end

    def print_songs

    end

end
