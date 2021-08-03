# Challenge: Car Challenge with TDD

# Copy the story into your rspec file as a comment.
# Then write the test(s) that class/method tests must pass.
# Then run the test(s) and see that they fail.
# Then implement the class/method, with comments, so that it passes the tests one at a time and you understand what you have created.

# connecting the testing file
require_relative 'car_challenge'
require 'rspec'

# Story: As a programmer, I can make a vehicle. Hint: Test that Vehicle.new does not raise any errors.

describe Car do
  it 'has to be real' do
    expect { Car.new }.to_not raise_error
  end

  it 'has a model' do
    my_car = Car.new
    my_car.model = 'Toyota'
    expect(my_car.model).to eq 'Toyota'
    expect(my_car.model).to be_a String
  end

  it 'can be given a color or be unpainted by default' do
    my_car = Car.new
    expect(my_car.color).to eq 'unpainted'
    expect(my_car.color).to be_a String
    my_red_car = Car.new 'Red'
    expect(my_red_car.color).to eq 'Red'
  end

  it 'has a speed' do
    my_car = Car.new
    expect(my_car.speed).to be 0
    expect(my_car.speed).to be_a Numeric
  end

  it 'can accelerate by an amount' do
    my_car = Car.new

    # One way to test:
    # my_car.accelerate 10
    # expect(my_car.speed).to be 10

    # Alternative way to test:
    expect { my_car.accelerate 10 }.to change { my_car.speed }.from(0).to(10)
    expect { my_car.accelerate 20 }.to change { my_car.speed }.from(10).to(30)
  end

  it 'can decelerate by an amount' do
    my_car = Car.new
    my_car.accelerate 20
    expect { my_car.decelerate 10 }.to change { my_car.speed }.from(20).to(10)
    expect { my_car.decelerate 20 }.to change { my_car.speed }.from(10).to(0)
  end
end

describe 'Garage' do
  it 'has to be real' do
    expect { Garage.new }.to_not raise_error
  end
end
