class Show < ActiveRecord::Base

    # attr_accessor

    # @@all = []

    # def initialize()
    #     @@all << self
    # end

    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        # binding.pry
        Show.find_by(rating: highest_rating)
    end

    def self.lowest_rating
        # binding.pry
        Show.minimum(:rating)
        
    end

    def self.least_popular_show
        # binding.pry
        Show.find_by(rating: lowest_rating)

    end

    def self.ratings_sum
        # binding.pry
        Show.sum("rating")
    end

    def self.popular_shows
        Show.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        # binding.pry
        Show.order("name ASC")
    end

end
  