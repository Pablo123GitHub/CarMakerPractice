class Car
  attr_reader :on_or_off

  def toggle
    return "off" if self.on_or_off == "on"
    return "on" if self.on_or_off == "off"
  end

end