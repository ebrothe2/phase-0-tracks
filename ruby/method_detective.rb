# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"I WondER WHerE thEY WeNT".swapcase
# "i wONDer whERe THey wEnt"

 "zom".insert(1, "o")
# => “zoom”

"I want some extra 0's on there".insert(19, "00000")
# "I want some extra 000000's on there"

 "enhance".center(15)
# => "    enhance    "

"CONFIDENTIAL!!!".center(30)
#"       CONFIDENTIAL!!!        "

 "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"Hey, Where are you going?".upcase
# "HEY, WHERE ARE YOU GOING?"

 "the usual".+ " suspects"
#=> "the usual suspects"
"Detective, I know the".+ " answer"
# "Detective, I know the answer"

 " suspects".insert(0,"the usual")
# => "the usual suspects"

" I know the answer".insert(0, "Detective,")
# "Detective, I know the answer"

 "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The last letter here will leave".chop
# "The last letter here will leav"

 "The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

"Remove the first letter from this sentence.".reverse.chop.reverse
#"emove the first letter from this sentence."

 "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"Well     I think this will look    different".squeeze(" ")
# "Well I think this will look different"

 "z".getbyte(0)
# => 122
# (What is the significance of the number 122 in relation to the character z?)
#returns the indexth byte as an integer
"a".getbyte(0)
# 97
 "How many times does the letter 'a' appear in this string?".count("a")
# => 4
"aabracadabra".count("a")
# 6