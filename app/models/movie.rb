class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end 

    # create 
    def self.create_with_title(title)        
        movie = Movie.new(title:title) 
        movie.save
        movie
    end

    # read
    # return first item in the table
    def self.first_movie
        Movie.first
    end 
    # return the last item in the table 
    def self.last_movie
        Movie.last
    end 
    # return the number of records in the table 
    def self.movie_count
        Movie.count 
    end 
    # return the movie with the specified id using the .find method
    def self.find_movie_with_id(id)
        Movie.find(id)
    end 
    # return the movie with the specified attributes using the .find_by method
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end 
    # return the movies released after 2002 using the .where method
    def self.find_movies_after_2002
        movies = Movie.where("release_date > ?", 2002)
        movies 
    end 

    # update
    # update a single movie with the #update method
    def update_with_attributes(attributes)
        update(attributes)
    end  
    # update multiple movies at once with the .update method
    def self.update_all_titles(title)
        Movie.update_all(title:title)
    end 

    # delete
    # delete a single movie with the #destroy method
    def self.delete_by_id(id)
        movie = Movie.find_by(id: id)
        movie.delete
    end 
    # delete all movies at once with the .destroy_all method
    def self.delete_all_movies
        Movie.destroy_all
    end 

end