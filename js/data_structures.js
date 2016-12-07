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