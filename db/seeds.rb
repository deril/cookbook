# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
recipe = Recipe.create(
  title: 'Best Italian Sausage Soup',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  cooking_time: 60
)
recipe.ingredients.create(value: '1 1/2 pounds sweet Italian sausage', title: 'italian sausage')
recipe.ingredients.create(value: '2 cloves garlic, minced', title: 'garlic')
recipe.ingredients.create(value: '2 small onions, chopped', title: 'onion')
recipe.ingredients.create(value: '2 (16 ounce) cans whole peeled tomatoes', title: 'canned tomato')
recipe.ingredients.create(value: '1 1/4 cups dry red wine', title: 'dry red wine')
recipe.ingredients.create(value: '5 cups beef broth', title: 'beef broth')
recipe.ingredients.create(value: '1/2 teaspoon dried basil', title: 'dried basil')
recipe.ingredients.create(value: '1/2 teaspoon dried oregano', title: 'dried oregano')
recipe.ingredients.create(value: '2 zucchini, sliced', title: 'zucchini')
recipe.ingredients.create(value: '1 green bell pepper, chopped', title: 'bell pepper')
