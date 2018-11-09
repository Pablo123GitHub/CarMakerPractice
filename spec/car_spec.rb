require('car')

describe Car do
  context "#toggle_car" do

    it "if the car is off, you turn it on " do
      allow(subject).to receive(:on_or_off).and_return("off")
      expect(subject.toggle).to eq("on")
    end

    it "if the car is on, you turn it off" do
      allow(subject).to receive(:on_or_off).and_return("on")
      expect(subject.toggle).to eq("off")
    end

  end


end