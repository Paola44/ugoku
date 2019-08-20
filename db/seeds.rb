# <<<<<<< HEAD
# =======
# require 'json'
# require 'open-uri'

# puts 'Cleaning database...'
# puts 'Searching address...'


# Event.destroy_all
# User_event.destroy_all
# User.destroy_all

# puts 'Creating true users...'

# nikol = User.create!(
#   name: 'Nikol',
#   email: 'nikol@example.fr',
#   password: 'password',
#   address: '135-127 Rue du Corps de Garde, 44100 Nantes',
#   photo: File.open(Rails.root.join('db/fixtures/users/nikol.jpg')),
#   favorite_sports: ['crossfit', 'yoga'],
#   )

# julien = User.create!(
#   name: 'Julien',
#   email: 'julien@example.fr',
#   password: 'password',
#   address: '21-1 Chemin de la Poignée, 44100 Nantes',
#   photo: File.open(Rails.root.join('db/fixtures/users/julien.jpg')),
#   favorite_sports: ['crossfit', 'running', 'yoga'],
#   )

# richard = User.create!(
#   name: 'Richard',
#   email: 'richard@example.fr',
#   password: 'password',
#   address: '35 Boulevard Babin Chevaye, 44200 Nantes',
#   photo: File.open(Rails.root.join('db/fixtures/users/richard.jpg')),
#   favorite_sports: ['running', 'crossfit', 'foot'],
#   )

# puts 'True users created Yiha!!!'
# puts 'Creating fake users...'


# user = User.create!(
#   name: 'Richard',
#   email: Faker::Internet.free_email(name: user.name),
#   password: 'password',
#   address:
#   photo:
#   favorite_sports:
#   )
# >>>>>>> f191fd7ab40975251afc66402a2da63f658b8f03
