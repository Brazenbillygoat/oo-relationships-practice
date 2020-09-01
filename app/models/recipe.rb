# joint table for dessert and ingredients

class Recipe

    attr_reader :dessert, :ingredients


    def initialize(dessert, ingredients)
        @dessert = dessert
        @ingredients = ingredients
    end

end