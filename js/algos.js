//creating a function to find longest word or phrase in an array
//first you'd have to have a way to pass the list of phrases into the function
//then look at each phrase individually
//then count the number of each characters in each individual phrases
//return the phrase whose number of characters is the longest

function findlongestphrase(string) {
  var phrases = string.split(" ");
//make a loop that looks at each index of array and counts the characters
  for(var i = 0; i < phrases.length; i++) {
    console.log(phrases[i].length)
  }

}