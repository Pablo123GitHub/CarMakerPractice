require('car')

describe Car do
  context "#toggle_car" do

    it "should start with OFF" do
      expect(subject.on_or_off).to eq("off")
    end

    it "if the car is off, you turn it on " do
      expect(subject.toggle).to eq("on")
    end

    it "if the car is on, you turn it off" do
      subject.toggle
      expect(subject.toggle).to eq("off")
    end

  end

  context "#fill_tank" do
    it "starts with an empty tank" do
        expect(subject.tank_status).to eq 0
    end

    it "if tank empty and I add 10 liters, I have 10L in tank" do
        subject.fill_tank(10)
        expect(subject.tank_status).to eq 10

    end

    it "if tank 30 and I add 20 liters, max capacity of 40, I get full tank" do
      subject.fill_tank(30)
      over_max_capacity_error_message = "Maximum capacity is 40. You are filling the tank with 10 liters above maximum capacity"
      expect {subject.fill_tank(20) }.to raise_error(over_max_capacity_error_message)
      expect(subject.tank_status).to eq 40
    end

    it "dislays a warning message with how much extra petrol has been added : here 10 Liters" do
      subject.fill_tank(30)
      over_max_capacity_error_message = "Maximum capacity is 40. You are filling the tank with 10 liters above maximum capacity"
      expect {subject.fill_tank(20) }.to raise_error.with_message(over_max_capacity_error_message)
    end

    it "dislays a warning message with how much extra petrol has been added : here 20 Liters" do
      subject.fill_tank(30)
      over_max_capacity_error_message = "Maximum capacity is 40. You are filling the tank with 20 liters above maximum capacity"
      expect {subject.fill_tank(30) }.to raise_error(over_max_capacity_error_message)
    end



  end


end