var colors = ["blue", "green", "pink", "black"];
var names = ["seabiscuit", "penny", "copper", "mr. ed"];

colors.push("red sparkles");
names.push("robert");

console.log(colors);
console.log(names);

var horses = {};

for(var i = 0; i< colors.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);

function Car(model, color, year) {
  console.log("This car is:", this);
  this.model = model;
  this.color = color;
  this.year = year;

  console.log("Car initialization complete");

  this.vroom = function() { console.log("VROOM VROOM"); };
}

var vehicle = new Car('mercedes', 'black', 2016);
console.log(vehicle);
vehicle.vroom();

console.log("-------");

var vehicle2 = new Car('Audi', 'silver', 2016);
console.log(vehicle2);