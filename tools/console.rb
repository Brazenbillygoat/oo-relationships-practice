require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


pels = Bakery.new("Pels")

bun = Dessert.new("Cinnamon Bun")
croissant = Dessert.new("Croissant")

cinnamon = Ingredient.new("Cinnamon")
sugar = Ingredient.new("Sugar")
dough = Ingredient.new("Dough")
flour = Ingredient.new("Flour")
butter = Ingredient.new("Butter")




Recipe.new(bun, [dough, sugar, cinnamon])
# Recipe.new(bun, dough)
# Recipe.new(bun, sugar)
# Recipe.new(bun, cinnamon)
Recipe.new(croissant, [flour, butter, sugar])

# p pels.ingredients

# p pels.desserts

p pels.average_calories
# binding.pry
