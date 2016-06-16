//writing a function to reverse a string
//first need to give a string to reverse
//then look at the string and divide it into characters
//number each of the characters
//reverse the number of the characters
// then join the characters back together again

// var str = "Hello";

// ended up being able to call .reverse instead of reversing the index since it returns an array.
function reversestring(str) {
  console.log(str.split('').reverse().join(''));
}

var reverse = reversestring("Hello")

if (1=1) {
  console.log(reverse);
}