// Psuedocode - reverse function
// Input a string and reverse it
// 
// Input a string

var str = "hello";

// Create function
//  Create a loop that will run for the length of the inputted string
//  Copy the last element in the inputed string to a new string
//     if no built-in method, will have to write one
//  Make sure the loop returns new string

function reverse(str){
  // reversestr = "";

  for (var i=str.length; i>-1; i--) {
    // reversestr = reversestr + str[i];
    console.log(str[i])
  }

  // return reversestr;

}

// console.log(reverse("hello"));
reverse("hello")

