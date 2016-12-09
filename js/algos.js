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
//        initiate a loop that will run for the length of object1
//          create a variable equal to the key of object1
//          create a variable equal to the value of object1
//          initiate another loop that will run for the length of object2
//             create a variable equal to the key of object2
//             create a variable equal to the value of object2
//             check if both keys match and both values match
//                if so, set match variable to true
// Output: match variable

var match = function(obj1, obj2) {
  isMatch = false;

  for (i=0; i<Object.keys(obj1).length; i++){

    firstKey = Object.keys(obj1)[i];
    firstValue = Object.values(obj1)[i];

    for (j=0; j<Object.keys(obj2).length; j++){

      secondKey = Object.keys(obj2)[j];
      secondValue = Object.values(obj2)[j];

      if (firstKey == secondKey && firstValue == secondValue){
        isMatch = true;
      }
    }
  }
  return isMatch;
}

// Release 2
// Function: generate an array of a given length with random letters inside
// Input: length of random array
// Steps: create variable for the random array
//        create variable with alphabet
//        initiate a loop that will run inputted number of times 
//          create variable with random number between 1 and 10 for length of string
//          initiate loop that will run until reaching randomly generated length
//            create string variable
//            create randomly generated index
//            add letter with rand index of alphabet string to string variable
//          push string to random array

var randomInput = function(length){

    randomArray = [];

    alpha = "abcdefghijklmnopqrstuvwxyz";

    for (i=0; i<length; i++) {
      randLength = Math.floor(Math.random()*10)+1;
      randString = "";
      for (j=0; j<randLength; j++){
        randIndex = Math.floor(Math.random()*26);
        randString = randString + alpha[randIndex];
      }
      randomArray.push(randString);
    }

    return randomArray;

}

// Driver Code

// var names = ['Ed', 'Seabiscuit', 'Skyfall', 'Dog Food'];

// console.log(longest(names));

// var obj1 = {horse: 'Seabiscuit', movie: 'Skyfall', human: 'Ed'};
// var obj2 = {song: 'Gold Digger', giraffe: 'Necky', horse: 'Seabiscuit'};


// console.log(match(obj1,obj2));

// console.log(randomInput(2));

// console.log(randomInput(3));

// console.log(randomInput(5));

var times = 5;

for (i=0; i<times; i++) {
  rand = Math.floor(Math.random()*3)+1;
  input = randomInput(rand);
  console.log(input);
  output = longest(input);
  console.log(output);
}



