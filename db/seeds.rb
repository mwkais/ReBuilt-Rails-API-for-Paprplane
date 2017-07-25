# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
PostAccess.destroy_all
UserFriend.destroy_all


User.create([{
  Name: 'Michael Kaiser',
  UserName: 'Mwkais',
  Email: 'mwkais@gmail.com',
  Password: 'mwk318',
  DateOfBirth: 3/18/92,
},
{
  Name: 'Pat Back',
  UserName: 'pattyback',
  Email: 'pbackeris@gmail.com',
  Password: '1234',
  DateOfBirth: 5/23/93,

},
{
  Name: 'ryan schroeder',
  UserName: 'rs',
  Email: 'rschroeder@gmail.com',
  Password: '0000',
  DateOfBirth: 8/10/91,

},
{
  Name: 'nicole tatum',
  UserName: 'nicool',
  Email: 'ntate@gmail.com',
  Password: 'michaelisthebest',
  DateOfBirth:8/22/95,
}])

Post.create([{
  user_id: 0,
  Type: 0,
  Caption: 'look at this cool picture',
  Content: 'coolphotoURL',
  Counter: 5
},
{
  user_id: 2,
  Type: 1,
  Caption: 'going to chipotle',
  Content: 'Hey guys im going to chipotle!',
  Counter: 6
},
{
  user_id: 1,
  Type: 2,
  Caption: 'hahaha',
  Content: 'https://davidmles.com/seeding-database-rails/',
  Counter: 10
},
{
  user_id: 3,
  Type: 1,
  Caption: 'hey how are you doing',
  Content: 'when are we gonna go get chipotle too?',
  Counter: 25
},
{
  user_id: 0,
  Type: 0,
  Caption: "another cool picture coming your way",
  Content: "anothercoolpicURL",
  Counter: 2
},
{
  user_id: 3,
  Type: 2,
  Caption: 'great stuff',
  Content: 'this app must be made by some cool guys',
  Counter: 3
}])

PostAccess.create([{
  user_id: 0,
  post_id: 0,
  FriendID: 1,
  Viewed: false
},
{
  user_id: 0,
  post_id: 0,
  FriendID: 2,
  Viewed: true
},
{
  user_id: 0,
  post_id: 0,
  FriendID: 3,
  Viewed: false
},
{
  user_id: 2,
  post_id: 1,
  FriendID: 0,
  Viewed: false
},
{
  user_id: 2,
  post_id: 1,
  FriendID: 1,
  Viewed: true
},
{
  user_id: 2,
  post_id: 1,
  FriendID: 2,
  Viewed: false
},
{
  user_id: 1,
  post_id: 2,
  FriendID: 2,
  Viewed: false
},
{
  user_id: 3,
  post_id: 3,
  FriendID: 0,
  Viewed: false
},
{
  user_id: 0,
  post_id: 4,
  FriendID: 1,
  Viewed: true
},
{
  user_id: 0,
  post_id: 4,
  FriendID: 2,
  Viewed: false
},
{
  user_id: 0,
  post_id: 4,
  FriendID: 3,
  Viewed: false
},
{
  user_id: 3,
  post_id: 5,
  FriendID: 0,
  Viewed: false
},
{
  user_id: 3,
  post_id: 5,
  FriendID: 1,
  Viewed: true

}])

UserFriend.create([{

  user_id: 0,
  Friend_id: 1,
  Pending: false
},
{
  user_id: 0,
  Friend_id: 2,
  Pending: false
},
{
  user_id: 0,
  Friend_id: 3,
  Pending: false
},
{
  user_id: 1,
  Friend_id: 0,
  Pending: false
},
{
  user_id: 1,
  Friend_id: 2,
  Pending: false
},
{
  user_id: 2,
  Friend_id: 0,
  Pending: false
},
{
  user_id: 2,
  Friend_id: 1,
  Pending: false
},
{
  user_id: 3,
  Friend_id: 0,
  Pending: false
},
{
  user_id: 3,
  Friend_id: 1,
  Pending: true
}])

p "Created #{User.count} users";
p "Created #{Post.count} posts";
p "Created #{PostAccess.count} post_accesses";
p "Created #{UserFriend.count} user_friends";
