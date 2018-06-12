require_relative 'artist'

class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(file_name)
        song_data = file_name.split(" - ")
        puts song_data
        song_artist = song_data[0]
        puts(song_artist)
        song_title = song_data[1]
        puts(song_title)

        new_instance = Song.new(song_title)
        artist = Artist.find_or_create_by_name(song_artist)
        new_instance.artist = artist
    end
end

filename = 'Michael Jackson - Black or White - pop.mp3'


# song_data = filename.split(" - ")
# song_artist = song_data[0]
# puts ("song_artist #{song_artist}")
# song_title = song_data[1]
# puts ("song_title #{song_title}")
# puts("-------")

new_song = Song.new_by_filename(filename)
# puts ("song name: #{new_song.name}")
# puts ("song name: #{new_song.artist}")
# puts ("song name: #{new_song.artist.name}")
