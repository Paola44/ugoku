require 'open-uri'
require 'nokogiri'

puts 'Searching address...'

url = 'https://hoodspot.fr/restaurant/nantes/'

html_content = open('https://hoodspot.fr/restaurant/nantes/').read
doc = Nokogiri::HTML(html_content)

doc.search('uiSerpAddress uaLv3').each_with_index do |element, index|

end


puts 'Cleaning database...'

Event.destroy_all
User_event.destroy_all
User.destroy_all

puts 'Creating true users...'

nikol = User.create!(
  name: 'Nikol',
  email: 'nikol@example.fr',
  password: 'password',
  address: '135-127 Rue du Corps de Garde, 44100 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/nikol.jpg')),
  favorite_sports: ['crossfit', 'yoga'],
  )

julien = User.create!(
  name: 'Julien',
  email: 'julien@example.fr',
  password: 'password',
  address: '21-1 Chemin de la Poignée, 44100 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/julien.jpg')),
  favorite_sports: ['crossfit', 'running', 'yoga'],
  )

richard = User.create!(
  name: 'Richard',
  email: 'richard@example.fr',
  password: 'password',
  address: '35 Boulevard Babin Chevaye, 44200 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/richard.jpg')),
  favorite_sports: ['running', 'crossfit', 'foot'],
  )

puts 'True users created Yiha!!!'
puts 'Creating fake users...'


user = User.create!(
  name: 'Richard',
  email: Faker::Internet.free_email(name: user.name),
  password: 'password',
  address:
  photo:
  favorite_sports:
  )
