require 'byebug'

class Car
  # attr_accessor :on_or_off

  def initialize
    @on_or_off = "off"
  end

  def toggle
    if @on_or_off == "on"
      @on_or_off = "off"
    else
      @on_or_off = "on"
    end
    @on_or_off
  end

  def on_or_off
    @on_or_off
  end

end