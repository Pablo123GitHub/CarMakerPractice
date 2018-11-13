require 'byebug'

class Car

  def initialize
    @on_or_off = "off"
    @tank_status = 0
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

  def tank_status
    @tank_status
  end

  def fill_tank(liters)
    if (@tank_status + liters) <= 40
      @tank_status = @tank_status + liters
    else
      @tank_status = 40
    end

  end



end