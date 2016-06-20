//creating a function to find longest word or phrase in an array
//first you'd have to have a way to pass the list of phrases into the function
//then look at each phrase individually
//then count the number of each characters in each individual phrases
//return the phrase whose number of characters is the longest
function findlongestphrase(phrases) {
  var longestphrase = '';
  for(var i = 0; i < phrases.length; i++) {
    // phraselist[phrases[i]] = phrases[i].length;
      if (phrases[i].length > longestphrase.length) {
        longestphrase = phrases[i];
      }
  }
return longestphrase;
}

// make a function that takes two objects as parameters
// then compares the two objects to see if they contain any matching key values
// if they do return true if not return false
//seeing which object is longest in order to compare only the number of keys of shortest object
function shortestToLongest(obj1,obj2) {
  if (Object.keys(obj1).length > Object.keys(obj2).length) {
    return [obj2,obj1];
  } else {
    return [obj1,obj2];
  }
}
function compareObjects(obj1,obj2) {
  var shortobject = shortestToLongest(obj1,obj2)[0]
  var longobject = shortestToLongest(obj1,obj2)[1]
  var result = false
  for(var i = 0; i < Object.keys(shortobject).length; i++){
    var key = Object.keys(shortobject)[i];
    if (shortobject[key] === longobject[key]) {
      result = true;
    }
  }
  return result;
}
//driver code for compare objects function
// var car1 = {brand: "mercedes", color: "black", speed: 'superFast', transmission: 'manual'}
// var car2 = {brand: "mercedes", color: "white", seats: 4}

// console.log(compareObjects(car1, car2))
// console.log(compareObjects(car1, {}))


// Design function for generating a random array
// input is an integer that tells function how many random words to put in the array
// words vary in length from 1-10 characters
// output is an array of the random words (strings of varying length)
// first make a function to generate a random letter to use in the random array method
function random_letter() {
  // generate random number that points to the index of an alphabet string and returns a letter
  var randomNumber = Math.floor(Math.random()*26);
  var alphabet = ('abcdefghijklmnopqrstuvwxyz');
  return (alphabet.charAt(randomNumber))
}
// now use random letter to make random word with max length of 10
function random_word() {
  var randomString = [];
  var lengthofstring = Math.floor(Math.random()*(10-1)) +1;
  for (var i = 0; i < lengthofstring; i++) {
     randomString.push(random_letter());
  }
  return randomString.join("");
}
// now use random word to loop through and create an array of random words
function random_array(integer) {
    var listWords = [];
    for (var i = 0; i < integer; i++) {
      listWords.push(random_word());
    }
    return listWords;
}

// driver code

for (var i = 0; i < 10; i++) {
  var words = (random_array(3));
  console.log(words);
  console.log(findlongestphrase(words));
}


