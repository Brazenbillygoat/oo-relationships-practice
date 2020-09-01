#ingredient can be used in many dessert
#every ingredient has a calorie count wtf?

class Ingredient

    attr_reader :name
    attr_accessor :dessert
    
    @@all = []

    def initialize(name, dessert)
        @name = name
        @dessert = dessert
        Dessert.all << self
    end

    def self.all
        @@all
    end

end