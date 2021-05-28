class Car

  def initialize color='unpainted', speed=0
    @color = color
    @speed = speed
  end

  def color
    @color
  end

  def speed
    @speed
  end

  def accelerate increase_by
    @speed = @speed + increase_by
  end

  def decelerate decrease_by
    if @speed >= decrease_by
      @speed = @speed - decrease_by
    else
      @speed = 0
    end
  end

  def model=car_model
    @model = car_model
  end

  def model
    @model
  end

end


class Garage
end
