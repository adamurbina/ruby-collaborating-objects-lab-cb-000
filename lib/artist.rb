class Artist

    attr_accessor :name,

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        
    end

end
