#dessert belongs to a bakery
#dessert has many ingredient

class Dessert

    attr_reader :name, :bakery
    @@all = [] 

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        ing = []
        Recipe.all.each do |confection|
            if self.name == confection.dessert.name    
                confection.ingredients.map do |item|
                    ing.push(item.name)
                end
            end
        end
        ing
    end

    def bakery
        Dessert.all.select do |dessert|
            dessert.name == self.name
        end
    end

    def calories #returns ALL the calories for ALL the ingredients in that dessert
        calories = 0.0
        Recipe.all.each do |dessert|
            if self.name == dessert.dessert.name    
                dessert.ingredients.each do |item|
                    calories += item.calorie_count
                end
            end
        end
        calories
    end
end