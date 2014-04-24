class Pizza
  attr_accessor :toppings

  def initialize(*toppings)
    if toppings==[]
      toppings.push Topping.new("cheese")
      @toppings=toppings
    else
      @toppings=toppings.flatten
    end
  end
end



class Topping
  attr_accessor :name, :vegetarian
  # Instantiate a new topping.
  #
  # name - The String name of the topping.
  #
  # Returns a new Topping object.
  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end


end
