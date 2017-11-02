class Temperature

  def initialize(temperature)
    @temperature = temperature
  end

# Reader
  def temperature
    @temperature
  end

# Writer
  def temperature=(new_temperature)
    @temperature = new_temperature
  end

# Instance methods
  def to_fahrenheit
    # 20°C × 9/5 + 32
    if @temperature[:c]
      (@temperature[:c] * 9/5) + 32
    else
      @temperature[:f]
    end
  end

  def to_celsius
    if @temperature[:f]
      (@temperature[:f] - 32) * 5/9
    else
      @temperature[:c]
    end
  end

end
