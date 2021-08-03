class Car
  def initialize(color = 'unpainted', speed = 0)
    @color = color
    @speed = speed
  end

  attr_accessor :model
  attr_reader :color, :speed

  def accelerate(increase_by)
    @speed += increase_by
  end

  def decelerate(decrease_by)
    @speed = if @speed >= decrease_by
               @speed - decrease_by
             else
               0
             end
  end
end

class Garage
end
