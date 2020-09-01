require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


pels = Bakery.new("Pels")

bun = Dessert.new("Cinnamon Bun")
buns_ing = Ingredient.new("Cinnamon")
buns_ing1 = Ingredient.new("Sugar")
buns_ing2 = Ingredient.new("Dough")

croissant = Dessert.new("Croissant")
cro_ing = Ingredient.new("Flour")
cro_ing1 = Ingredient.new("Butter")
cro_ing2 = Ingredient.new("Sugar")


binding.pry
