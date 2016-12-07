var colors = ["blue", "silver", "brown", "gray"];
var names = ["Ed", "Co-Co", "Karis", "Sophie"];

colors.push("green");
names.push("Angie");
console.log(colors);

var horseColor = {};
for (var i = 0; i < colors.length; i++){
  console.log(colors[i]);
  console.log(names[i]);
  horseColor[colors[i]] = names[i];
}
console.log(horseColor);

function Car(year, model) {
  this.year = year;
  this.model = model;
  this.honk = function(){ console.log("Honk!"); };

}

var aCar = new Car (2001, "PT");
console.log(aCar.year);
aCar.honk();

var anotherCar = new Car (2014, "Mini");
console.log(anotherCar.model);
anotherCar.honk();
