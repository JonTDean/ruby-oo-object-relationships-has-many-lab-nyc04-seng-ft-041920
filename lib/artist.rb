class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.collect do |song_name|             # searches the <Class: Song> and enumerates through the array @@all
           song_name if song_name.artist == self    # Returns song_name if song_name.artist is equal to current <Class: Artist>
        end
    end

    def add_song(song)
        song.artist = self if song.name             # if song.name returns true set the value of song.artist to the current <Class: Artist>
    end

    def add_song_by_name(song)
        new_song = Song.new(song)                   # Create a new instance of song with the song argument.
        new_song.artist = self                      # Set the new_song.artist value to equal the current <Class: Artist> instance.
    end

    def self.song_count
        Song.all.count                              # Returns entire array of songs from <Class: Song> 
    end

end

