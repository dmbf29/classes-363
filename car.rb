# filename -> lower_snake_case
# classname -> UpperCamelCase
# class ALWAYS SINGULAR

class Car # all the rules for one instance
  attr_accessor :color # builds both the reader and writer
  attr_writer :color # allows to change instance variables
    # constructor FOR ONE INSTANCE
  def initialize(color, brand) # .new -> .intialize
    # instance variable -> stores info inside instance
    @color = color
    @brand = brand
    @engine_started = false
  end

  # instance methods have access to instance variables
  # reading the instance variable
  def color
    return @color
  end
  # THESE ARE THE SAME THING
  attr_reader :color
  # def model
  #   @model
  # end
  # creates a method to read the instance variable

  # this is what the attr_writer is making
  # def color=(new_color)
  #   @color = new_color
  # end

  # reading the instance var
  def engine_started?
    @engine_started
  end

  # writing over the instance var
  def start_engine
    pump_fuel
    start_motor
    spark_plug
    @engine_started = true
  end

  def add_gps
    @gps = true
  end

  private

  def pump_fuel
    puts "pump fuel..."
  end

  def start_motor
    puts "start_motor..."
  end

  def spark_plug
    puts "spark_plug..."
  end
end




