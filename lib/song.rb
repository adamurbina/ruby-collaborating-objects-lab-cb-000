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
        puts("song artist: #{song_artist}")
        song_title = song_data[1]
        puts("song title: #{song_title}")

        new_instance = Song.new(song_title)
        puts ("new instance name1: #{new_instance.name}")
        artist = Artist.find_or_create_by_name(song_artist)
        puts ("new instance name2: #{new_instance.name}")
        new_instance.artist = artist
        puts ("new instance artist: #{new_instance.artist.name}")
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
