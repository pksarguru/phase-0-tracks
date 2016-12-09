// Release 0 
// Longest Phrase Function
// define method
// create loop to iterate through the array
//  create variable to store the longest string
//  set the current value in the array equal to the longest string variable if it's longer
// return the longest string variable

var longest = function(stringArray) {

  longeststr = "";

  for (i=0; i<stringArray.length; i++) {
    if (stringArray[i].length > longeststr.length) {
      longeststr = stringArray[i];
    }
  }
  return longeststr;
}

var names = ['Ed', 'Seabiscuit', 'Skyfall', 'Dog Food'];

console.log(longest(names));

