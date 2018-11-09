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

  end


end