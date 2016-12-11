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



test_arr = ["long phrase","longest phrase","longer phrase"];
phrase(test_arr);
test = ["one", "2", "three"];
phrase(test);
snake = ["snake", "snaake", "snaaaaaake!", "mushroom mushroom"];
phrase(snake);
