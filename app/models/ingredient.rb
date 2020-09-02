#ingredient can be used in many dessert
#every ingredient has a calorie count wtf?

class Ingredient

    attr_reader :name
    attr_accessor :calorie_count
    
    @@all = []

    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert
        Recipe.all.each do |dish|
            dish.ingredients.each do |item|
                if self.name == item.name
                    p dish.dessert
                end
            end
        end
    end

    def bakeries
        Recipe.all.each do |dish|
            dish.ingredients.each do |item|
                if item.name == self.name
                    p dish.dessert.bakery
                end
            end
        end
    end

    def self.find_all_by_name(ingredient)
        so_far = Ingredient.all.find_all do |item| 
            item.name.include? ingredient 
        end
        so_far.map { |element| element.name }
    end

end