class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def artist=(artist)
        @artist = artist
    end

    def new_by_filename(file_name)
        song_data = filename.split(" - ")
        song_title = song_data[1]
        song_artist = song_data[0]
        new_instance = self.new(song_title)
        artist = Artist.find_or_create_by_name(song_artist)
        self.artist = artist
    end
end
