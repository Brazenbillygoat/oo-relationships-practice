#ingredient can be used in many dessert
#every ingredient has a calorie count wtf?

class Ingredient

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        # @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

end