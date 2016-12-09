var colors = ['blue', 'red', 'chartreuse', 'orange'];
var names = ['Ed', 'Seabiscuit', 'Skyfall', 'Dog Food'];

colors.push('purple');
names.push('Pony');

horsesColors = {};

for (i=0; i<colors.length; i++) {
  horsesColors[colors[i]] = names[i];


console.log(horsesColors);

// Car constructor features:
// model
// top speed
// speed
// gas function
// break function

function Car(model, topSpeed, workingOrder) {
  this.model = model;
  // this.topSpeed = topSpeed;
  this.workingOrder = workingOrder;
  this.speed = 0;

  console.log('Your new car is ' + this.model + 
    " and it has a top speed of " + topSpeed + ".")

  this.gas = function(seconds) {
    if (this.workingOrder) {
      this.speed = seconds*10;
      if (this.speed>topSpeed){
        this.speed = topSpeed;
      }
    console.log('Your ' + model + ' is moving at ' + this.speed + ' mph');
    }
    else {
      console.log('Sorry your ' + model + ' is broken');
    }

  }

  this.brake = function(seconds) {
    if (this.speed>0){
      this.speed = this.speed - seconds*20;
      if (this.speed<0){
        this.speed = 0;
      }
      console.log('Your ' + model + ' is moving at ' + this.speed + ' mph');
    }
    else {
      console.log('Your ' + model + ' is not moving.');
  }
    }

}

var anotherCar = new Car('Hyundai', 65, true);
console.log(anotherCar);
// anotherCar.gas(4);
// anotherCar.brake(4);
// var Car2 = new Car('BMW', 125, true);
// var Car3 = new Car('Pinto', 35, false);
// var Car4 = new Car('Ferrari', 7, true);
// Car2.gas(100);
// Car3.gas(5);
// Car4.brake(12);
for (var key in anotherCar){
  anotherCar[key] = 0;
}
console.log(anotherCar);

