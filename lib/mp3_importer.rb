class MP3Importer

    def initialize(path)
        @path = path
    end

    def files
        @files = []
        Dir.entries(@path).each{|file|
            @files << file if file.ends_with(".mp3")
        }
        @files
    end
    
end