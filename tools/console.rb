require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


pels = Bakery.new("Pels")
rominas = Bakery.new("Rominas")

bun = Dessert.new("Cinnamon Bun", pels)
croissant = Dessert.new("Croissant", pels)
scone = Dessert.new("Scone", pels)
fruit_cup = Dessert.new("Fruit cup", rominas)
romsant = Dessert.new("Romsant", rominas)

dragon_fruit = Ingredient.new("Dragon fruit", 10)
cinnamon = Ingredient.new("Cinnamon", 20)
sugar = Ingredient.new("Dragon sugar", 15)
dough = Ingredient.new("Dough", 135)
flour = Ingredient.new("Flour", 120)
butter = Ingredient.new("Butter", 45)
milk = Ingredient.new("Milk", 60)
pistachio = Ingredient.new("Pistachio", 200)



Recipe.new(scone, [pistachio, milk])
Recipe.new(bun, [dough, sugar, cinnamon])
# Recipe.new(bun, dough)
# Recipe.new(bun, sugar)
# Recipe.new(bun, cinnamon)
Recipe.new(croissant, [flour, butter, sugar])
Recipe.new(romsant, [flour, butter, dragon_fruit])

# p pels.ingredients

# p pels.desserts

# p pels.average_calories

# p scone.ingredients
# sugar.bakeries
p Ingredient.find_all_by_name("Dragon")

