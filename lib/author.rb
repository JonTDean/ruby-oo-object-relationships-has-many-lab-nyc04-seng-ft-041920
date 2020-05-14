class Author
    
    attr_accessor :name

    def initialize(name)
        @name = name    
    end
    
    def posts
        Post.all.collect do |post_name| 
            post_name if post_name.author == self   # If an ele.author (element in <Class: Post> Array: @@all) == self then return the ele
        end
    end

    def add_post(post)
        post.author = self if post.title            # Checks if post.title exists, if it does sets the <Class: Author> to the <Class: Post> instance variable @author
    end

    def add_post_by_title(post)
        new_post = Post.new(post)                   # Creates new <Class: Post> and sets it to variable new_post
        new_post.author = self                      # Sets the value of <Class: Post>.author to current <Class: Author>
    end

    def self.post_count
        Post.all.count                              # Reads the entire Post.all Array @@all and counts the total amount of elements.
    end
end