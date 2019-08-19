puts 'Cleaning database...'

Event.destroy_all
User_event.destroy_all
User.destroy_all

puts 'Creating users...'

nikol = User.create!(
  name: 'Nikol',
  email: 'nikol@example.fr',
  password: 'password',
  address: '135-127 Rue du Corps de Garde, 44100 Nantes',
  photo:
  favorite_sports:
  )

julien = User.create!(
  name: 'Julien',
  email: 'julien@example.fr',
  password: 'password',
  address: '21-1 Chemin de la Poignée, 44100 Nantes',
  photo: ,
  favorite_sports: ,
  )

richard = User.create!(
  name: 'Richard',
  email: 'richard@example.fr',
  password: 'password',
  address: '35 Boulevard Babin Chevaye, 44200 Nantes',
  photo: ,
  favorite_sports: ,
  )

richard = User.create!(
  name: 'Richard',
  email: Faker::Internet.free_email(name: user.name),
  password: 'password',
  address:
  photo:
  favorite_sports:
  )
puts 'Users created Yiha!!!'
