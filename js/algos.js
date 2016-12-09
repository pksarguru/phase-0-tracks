// Release 0 
// Longest Phrase Function
// Function: find longest string in an array
// Input: array
// Steps: initiate loop to iterate through array
            // create variable to store the longest string
            // set the current value in the array equal to the longest string variable if it's longer
// output: longest string variable


var longest = function(stringArray) {

  longeststr = "";

  for (i=0; i<stringArray.length; i++) {
    if (stringArray[i].length > longeststr.length) {
      longeststr = stringArray[i];
    }
  }
  return longeststr;
}

// Release 1 
// Function that determines if hashes share key-value pair
// Function: determine whether hashes share key-value pair
// Input: two arrays
// Steps: define a match variable as false
//        initiate a loop that will run for the length of hash1
//          initiate another loop that will run for the length of hash2
//             if the key and value match, set match variable to true
// Output: match variable

var match = function(hash1, hash2) {
  match = false;

  for (i=0; i<hash1.length)
}     

// Driver Code

var names = ['Ed', 'Seabiscuit', 'Skyfall', 'Dog Food'];

console.log(longest(names));



