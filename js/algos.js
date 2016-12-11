function phrase(array) {
  longestString = "";
  this.array = array;
  // loop through the array
  for (var i = 0; i < this.array.length; i++){
    // check the length of each string against the string that came before
    if (this.array[i].length >= longestString.length) {
      // keep that string if longer, ignore it if shorter
      longestString = this.array[i];
    }
  }
  // when you get to the end of the array return the last thing you kept
  console.log(longestString);
}

// create a function that takes two objects
// loop through the objects comparing all the keys
function match(objOne, objTwo) {
  this.objOneKeys = Object.keys(objOne);
  this.objTwoKeys = Object.keys(objTwo);
  // a place to store keys if they match
  this.matchKey = [];

  // compare the key at the 0th place of the first object to all of the places in the second object,
  // and only then will you go to the 1st place in the first object
  // (like a minute hand and an hour hand in a clock)
  for (var i = this.objOneKeys.length - 1; i >= 0; i--){
    for (var j = this.objOneKeys.length - 1; j >= 0; j--){
      if (this.objOneKeys[i] === this.objTwoKeys[j]){
        this.matchKey.push(this.objOneKeys[i]);
        // debugging console.log(this.matchKey);
      }
    }
    if (this.matchKey === []){
      return false;
    }
  }
  // if there is the same key in both objects then check the values
  for (var x = 0; x <= this.matchKey.length; x++){
    if (objOne[this.matchKey[x]] === objTwo[this.matchKey[x]]){
      // debugging console.log(objOne[this.matchKey[x]])
      return true;
    } else {
      return false;
    }
  }
}

// Driver code for phrase function
test_arr = ["long phrase","longest phrase","longer phrase"];
phrase(test_arr); // => longest phrase
test = ["one", "2", "three"];
phrase(test); // => three
snake = ["snake", "snaake", "snaaaaaake!", "mushroom mushroom"];
phrase(snake); // => mushroom mushroom

// Driver code for match function
var a = {name: "Steven", age: 54};
var b = {name: "Tamir", age: 54};
console.log(match(a, b)); // => true

var c = {name: "moon moon", age: 2, blah: "blah blah"};
var d = {name: "Joe", age: 74, blah: "deblah blah"};
console.log(match(c, d)); // =>false