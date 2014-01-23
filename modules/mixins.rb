module CalorieCalculator
  def calculate_calories(ingredients)
    total_calories = 0
    ingredients.each do |ingredient|
      if ingredient.is_a? Ingredient
        total_calories += ingredient.calorie_count
      else
        raise TypeError, "The ingredient must be Ingredient Object"
      end      
    end
    total_calories
  end
end

class Ingredient
  attr_reader :name, :calorie_count
  def initialize(name, calorie_count = 0)
    @name           = name
    @calorie_count = calorie_count
  end
end

class Cookie
  attr_reader :ingredients
  include CalorieCalculator
  def initialize(ingredients = [])
    @ingredients = ingredients
  end
end

class Tempura
  attr_reader :ingredients
  include CalorieCalculator
  def initialize(ingredients = [])
    @ingredients = ingredients
  end
end