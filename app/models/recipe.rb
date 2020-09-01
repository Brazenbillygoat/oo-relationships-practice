# joint table for dessert and ingredients

class Recipe

    attr_reader :dessert, :ingredients

    @@all = []

    def initialize(dessert, ingredients)
        @dessert = dessert
        @ingredients = ingredients
        @@all.each do |recipe|
            if
        end
        @@all.push(self)
    end

    

    def self.all
        @@all
    end

end