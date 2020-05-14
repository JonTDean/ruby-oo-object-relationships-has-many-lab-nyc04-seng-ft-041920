class Song

    attr_accessor :name, :artist

    @@all = []                  # Describes class Variable @@all

    def initialize(name)        # calls from Class.new
        @name = name            # sets :name to the value of name
        @@all << self           # Shovels Object Name into array
    end

    def self.all    
        @@all                   # Calls the array @@all
    end

    def artist_name
        self.artist ? self.artist.name : nil    # If self.artist is nil return nil else if it does not return nil pull up its Class.name
    end
end