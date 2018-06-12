class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(file_name)
        song_data = file_name.split(" - ")
        song_title = song_data[1]
        song_artist = song_data[0]
        new_instance = Song.new(song_title)
        artist = Artist.find_or_create_by_name(song_artist)
        new_instance.artist = artist
    end
end
