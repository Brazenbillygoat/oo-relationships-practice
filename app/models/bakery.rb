
#bakery has many dessert
        #we will get the ingredients through dessert

class Bakery
    
    attr_reader :name
        
    @@all = []
            
    def initialize(name)
        @name = name
        @@all << self
    end
        
    def self.all #an array of all bakeries
        @@all
    end
        
    def ingredients
        Recipe.all.each do |inst_ing|
        inst_ing.ingredients
        end
    end

    def desserts
        Recipe.all.map do |inst_dessert|
            # binding.pry
        inst_dessert.dessert
        end
    end
    
    def average_calories 
        avg_dessert_kcal = []
        Recipe.all.each do |dessert|
            total_kcal = 0
            dessert.ingredients.each do |calorie|
                total_kcal += calorie.calorie_count 
            end
            avg_dessert_kcal << total_kcal
        end
        avg_dessert_kcal
    end
    
    def shopping_list #a string of names for ingredients
        
    end
        
end