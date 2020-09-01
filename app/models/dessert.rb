#dessert belongs to a bakery
#dessert has many ingredient

class Dessert

    attr_reader :name, :ingredient 
    @@all = [] 

    def initialize(name)
        @name = name
        @ingredient = ""
        @@all << self
    end

    def self.all
        @@all
    end

    def calories #returns ALL the calories for ALL the ingredients in that dessert


    end
end