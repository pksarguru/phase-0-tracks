var colors = ['blue', 'red', 'chartreuse', 'orange'];
var names = ['Ed', 'Seabiscuit', 'Skyfall', 'Dog Food'];

colors.push('purple');
names.push('Pony');

horsesColors = {};

for (i=0; i<colors.length; i++) {
  horsesColors[colors[i]] = names[i];

}

console.log(horsesColors);