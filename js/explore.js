// while the i equal to the length of the string - 1, for each string passed in take the last letter and add it to the empty string
var str = "la la la"

function reverse(str) {
  var newString = "";
  for (var i = str.length - 1; i >=0; i--)
    newString += str[i];
  return newString
}
console.log(reverse(str))
