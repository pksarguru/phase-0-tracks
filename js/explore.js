// Psuedocode - reverse function
// Input a string and reverse it
// 
// Input a string

var string = "hello";

// Create function
//  Create a loop that will run for the length of the inputted string
//  Copy the last element in the inputed string to a new string
//     if no built-in method, will have to write one
//  Make sure the loop returns new string

function reverse(str){
  reversestr = "";

  for (var i=str.length-1; i>-1; i--) {
    reversestr = reversestr + str[i];
  }

return reversestr;

}

newstr = reverse("hello");

if (1 == 1) {console.log(newstr)};

