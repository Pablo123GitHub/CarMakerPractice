## Building a car Maker just for practice purposes

## Requirements

A car can be on and off
It has a :
- model name
- a capacity (tank size)
- a consumption (gasoline liters / mile)

Turn the car on and off :
- If the car is off, by pushing the power button you turn it on
- and the opposite

Filling the tank :
- If the tank is empty and capacity is 40, and I add 10 liters => I end up with 10 in the tank
- If the tank is at 30 and capacity is 40, and I add 20 liters => The tank is full (40), and I get a warning about what didn't get added

Driving :
- If you drive X miles, your tank level is reduce by the consumption parameter
- For example, you start with a tank of 10, your car does 1 liter/mile, you drive 5 miles => you end up with 5 liters in the tank
- If you try to drive with an empty tank you get an error message
