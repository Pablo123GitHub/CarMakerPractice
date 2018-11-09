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


end