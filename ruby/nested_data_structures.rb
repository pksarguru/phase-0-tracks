#craft room, room, closet, wardrobe, desk, bookshelves
#craft room is hash
#room hash
#closet array
#wardrobe hash
#desk hash
#bookshelves array

craft_room = {
    room: {
        floor:[
          'spinning wheel',
          'futon'
         ],
        wardrobe: {
          shelves: 'yarn',
          drawers: 'fiber'
        },
        desk:{
          drawer: 'pens',
          top: 'paper'
        },
        bookshelves: [
          'knitting books',
          'crochet books',
          'spinning books'
        ],
    },
    closet:[
        'junk',
        'art supplies',
        'gifts',
        'costumes',
    ]
}

# print spinning wheel
p craft_room[:room][:floor][0]
# print spinning books,
p craft_room[:room][:bookshelves][2]
# print fiber, and yarn
p craft_room[:room][:wardrobe][:drawers] + '  ' + craft_room[:room][:wardrobe][:shelves]
#use in a string because I can!
p "I have a #{craft_room[:room][:floor][0]} and #{craft_room[:room][:bookshelves][2]} and #{craft_room[:room][:wardrobe][:drawers]}. I can make more #{craft_room[:room][:wardrobe][:shelves]}!"
#now I'm just getting silly
p "And then I can use my #{craft_room[:room][:bookshelves][0]} and make more #{craft_room[:closet][2]} for friends and family."