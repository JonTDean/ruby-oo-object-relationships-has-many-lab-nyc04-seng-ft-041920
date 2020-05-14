class Post 
    attr_accessor :title, :author
    @@all = []                                 

    def initialize(title)                       
        @title = title                          # sets the instance variable @title to the value of the parameter title
        @@all << self                           # Shovels the current self into the class Variable @@all
    end

    def self.all
        @@all                                   # Returns the @@all Array
    end

    def author_name
        self.author ? self.author.name : nil    # Checks if author exisits, if it does return author.name, else nil
    end
end