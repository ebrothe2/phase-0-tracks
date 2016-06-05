#build nested data structure
#grocery store

grocery_store = {
  'produce_section' => {
    'fruits'=> {
      'berries' => [
        "strawberries","blueberries","raspberries","blackberries"
      ],
      'apples'=> [
        "fuji","braeburn","golden_delicious","jonathon"
      ],
      'citrus'=> [
        "grapefruit","lemon","lime","orange"
      ],
    },
    'vegetables' => {
      'lettuce'=> [
        "spinach","kale","romaine","arugula"
      ],
      'squash'=> [
        "zucchini","butternut","yellow squash","spaghetti squash"
      ],
    },
  },
  'bakery' => {
    'cakes'=> [
      "chocolate", "vanilla", "marble"
    ],
    'pies'=> [
      "apple","cherry","pumpkin"
    ],
  },
  'meat' => {
    'beef_cuts'=> [
      "flank steak","ribeye","ground chuck"
    ],
    'poultry'=> [
      "turkey breast","chicken legs","whole chicken"
    ],
  },
  'frozen_foods' => {
    'desserts'=> [
      "ice cream","frozen pies",
    ],
    'vegetables'=> [
      "carrots", "broccoli", "mixed vegetables"
    ],
  },
}

p grocery_store['produce_section']['fruits']['berries'][0]
p grocery_store['bakery']['cakes'][2]
grocery_store['bakery']['cakes'].push('strawberry')
p grocery_store['bakery']['cakes']