require_relative artist

class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(file_name)
        song_data = file_name.split(" - ")
        song_artist = song_data[0]
        song_title = song_data[1]

        new_instance = Song.new(song_title)
        artist = Artist.find_or_create_by_name(song_artist)
        new_instance.artist = artist
    end
end

filename = 'Michael Jackson - Black or White - pop.mp3'

new_song = Song.new_by_filename(filename)

puts new_song.name
puts new_song.artist
puts new_song.artist.name
