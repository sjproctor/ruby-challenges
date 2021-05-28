# Challenges: Ruby Objects and Classes

# For the following Tasklist challenge, use initialize and getter methods in your class.

# As a developer, I can create a class called Task.
# As a developer, I can create three instances (objects) of class Task.
# As a developer, I can initialize each instance of class Task with a title.
# As a developer, I can see the title of each instance of class Task.
# As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.
# As a developer, I can update the status of each instance of class Task when the task has been completed.


class Task
  def initialize title
    @title = title
    @status = 'Incomplete'
  end
  def get_title
    @title
  end
  def get_status
    @status
  end
  def complete_task
    @status = 'Done!'
  end
end

wash_car = Task.new 'Wash the car'
wash_car.get_title
wash_car.get_status
wash_car.complete_task
wash_car.get_status

dishes = Task.new 'Put the dishes in the dishwasher'
dishes.get_title
dishes.get_status
dishes.complete_task
dishes.get_status

pay_bills = Task.new 'Rent to the landload, baby, thats his business'
pay_bills.get_title
pay_bills.get_status
pay_bills.complete_task
pay_bills.get_status




# For the following Color Palette challenge use the `attr_accessor` method.
# As a developer, I can create a class called ColorPalette.
# As a developer, I can create three instances (objects) of class ColorPalette. (e.g green = ColorPalette.new)
# As a developer, I can initialize each inistance of the class ColorPalette with three colors. (e.g. green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam'))
# As a developer, I can print the value of each individual color.
# As a developer, I can create a method called `all_colors` that when called will print a sentence telling me the three colors of a given palette.
# As a developer, I can change one or more colors of a given palette.


class ColorPalette
  attr_accessor :color1, :color2, :color3
  def initialize color1, color2, color3
    @color1 = color1
    @color2 = color2
    @color3 = color3
  end
  def all_colors
    "The colors of this palette are #{@color1}, #{@color2}, and #{@color3}."
  end
end

pink = ColorPalette.new('Mauve', 'Blush', 'Fushia')
pink.color1
pink.color2
pink.color3
pink.color3 = 'Ruby'
p pink.all_colors

blue = ColorPalette.new('Aqua', 'Cornflower', 'Cerulean')
blue.color1
blue.color1 = 'Sky'
blue.color2
blue.color3
p blue.all_colors

green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')
green.color1
green.color2
green.color2 = 'Emerald'
green.color3
p green.all_colors
