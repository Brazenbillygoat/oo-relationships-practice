
#bakery has many dessert
        #we will get the ingredients through dessert

class Bakery
    
    attr_reader :name
        
    @@all = []
            
     ef initialize(name)
        @name = name
        @@all << self
    end
        
    def self.all #an array of all bakeries
        @@all
    end
        
    def ingredients
        Dessert.all.each do |int_ing|
        # binding.pry
        p int_ing.ingredient
        end
    end
        
    def average_calories 
        #totalling the avg number of calories
        #should return a float
    end
        
    def shopping_list #a string of names for ingredients
        
    end
        
end