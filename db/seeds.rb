User.destroy_all
Monster.destroy_all
Post.destroy_all
Comment.destroy_all
Like.destroy_all

maddie = User.create(name: "Maddie", password: 'ilovecryptids', location: "Atlanta, GA USA", rank: 0)
sam = User.create(name: "Sam", password: 'password', location: "Atlanta, GA USA", rank: 0)
padfoot = User.create(name: "Padfoot", password: 'isolemnlysweariamuptonogood', location: "London, England", rank: 0)
sarah = User.create(name: "Sarah", password: 'sarah',location: "Sydney, Australia", rank: 0)
kevin = User.create(name: "Kevin", password: 'monsterhunter', location: "Brookyln, NY USA", rank: 0)
taylor = User.create(name: "Taylor", password:'yallow', location: "Wellington, NZ", rank: 0)

vampire = Monster.create(name: "Vampire", danger_rating: 6, description: "Bloodsucking humanoids. Can only be killed by a stake to the heart. Avoids sunlight", location: "Global")

sasquatch = Monster.create(name:"Sasquatch", danger_rating: 4, description: "Large and hairy ape-like creature", location: "Canada and the USA")

leviathan = Monster.create(name: "Leviathan", danger_rating: 7, description: "any large, unidentifiable, aquatic cryptid", location: "Unknown")

chupacabra = Monster.create(name: "Chupacabra", danger_rating: 2,description: "dog-sized mammalian cryptids with large eyes and bigger appetitites. Known to suck the blood of goats", location: "Central America")

mothman = Monster.create(name: "Mothman", danger_rating: 6, description: "The Mothman was first seen in West Virginia. It is described as a flying humanoid with large red eyes. It's appearance foretells great tragedy.", location: "West Virginia")

jersey_devil = Monster.create(name: "The Jersey Devil", danger_rating: 5, description: "In New Jersey and Philadelphia folklore, the Jersey Devil (a.k.a. the Leeds Devil) is a legendary creature said to inhabit the Pine Barrens of Southern New Jersey. The creature is often described as a flying biped with hooves, but there are many variations. The common description is that of a kangaroo-like or wyvern-like creature with a goat- or horse-like head, leathery bat-like wings, horns, small arms with clawed hands, cloven hooves and a forked tail. It has been reported to move quickly and is often described as emitting a high-pitched 'blood-curdling scream'.", location: "New Jersey")



vamp_sighting = Post.create(user_id: maddie.id, monster_id: vampire.id, title: "Bloodsucker on the beltline!", content: "Last night my wife and I were walking on the beltline just after dusk. We saw a strange humanoid figure emerge from the shadows. As our instincts told us to speed up, it matched our pace. We only got away by running into an italian restaurant. tl;dr BOLO for vampire in Virginia highlands!")

squatch_hunt = Post.create(user_id: padfoot.id, monster_id: sasquatch.id, title: "Squatch Hunt", content: "My buddy and I went out squatch hunting last weekend. You would not believe what we saw!!! After finishing up dinner we got a hit on one of our trip wire alarms. We tied a bunch of cans up around the perimeter of our site to alert us if anything came close. Anyway, we're sittin' by the fire and we hear the cans going off. Leaves crunchin', knocks on the wood. Then right in front of our gottdamn eyes we see a huge shadow rush past and a smell like rotten meat fills the  air. Then everything went quiet. Didn't hear nuthin else all night.")

leviathan_lake_errie = Post.create(user_id: kevin.id, monster_id: leviathan.id, title: "Leviathan in Lake Errie!", content: "I was visiting an old college friend a couple of months back . We went out on the lake with some friends to party on their boat. So we're out there anchored and just chillin' out when suddenly there's this huge thud. I'm talking like people getting knocked over, drinks everywhere. That kind of thud. We rush onto the deck to see what's going on and we catch a glimpse of a HUGE shadow swimming away. Bigger than the boat. Eerie is ginormous. Just about anything could be in there.")



sam_comment = Comment.create(user_id: sam.id, post_id: vamp_sighting.id, content: "Scary! Smart thinking running into the italian restuarant!")

taylor_comment = Comment.create(user_id: taylor.id, post_id: squatch_hunt.id, content: "What woods were you in? My wife and I go camping all the time and I'd like to AVOID that area. Lol!")

maddie_comment = Comment.create(user_id: maddie.id, post_id: squatch_hunt.id, content: "Did you set out any trail cameras?! Pics or it didn't happen!")

user_rank(maddie)
user_rank(sam)
user_rank(padfoot)
user_rank(kevin)
user_rank(taylor)
user_rank(sarah)
