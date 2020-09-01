#ingredient can be used in many dessert
#every ingredient has a calorie count wtf?

class Ingredient

    attr_reader :name
    attr_accessor :calorie_count
    
    @@all = []

    def initialize(name)
        @name = name
        @calorie_count = 10
        @@all << self
    end

    def self.all
        @@all
    end

end