//writing a function to reverse a string
//first need to give a string to reverse
//then look at the string and divide it into characters
//number each of the characters
//reverse the number of the characters
// then join the characters back together again

// var str = "Hello";

function reversestring(str) {
  return (str.split('').reverse().join(''));
}

var backwards = reversestring("Hello");

console.log(backwards);

if (1==1) {
  console.log(backwards);
}