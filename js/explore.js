// while the i equal to the length of the string, for each string passed in take the last letter and add it to the empty string
var str = "la la la"

function reverse(str) {
  var newStr = "";
  for (var i = str.length - 1; i >=0; i--)
    newStr += str[i];
  return newStr;
}
var newStr = reverse(str)
if (newStr == str) {
  console.log ("Palindrome!");
} else {
 console.log(newStr);
}