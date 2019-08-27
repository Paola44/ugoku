puts '...Cleaning database...'

UserEvent.destroy_all
Event.destroy_all
Availability.destroy_all
User.destroy_all

puts '...Creating ultimate users...'

nikol    = User.create!(
  name: 'Nikol',
  email: 'nikol@example.fr',
  password: 'password',
  address: '4 Rue Lebrun, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/nikol.jpg')),
  favorite_sports: ['crossfit', 'yoga'],
  )
julien   = User.create!(
  name: 'Julien',
  email: 'julien@example.fr',
  password: 'password',
  address: '16 Rue Frédéric Cailliaud, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/julien.jpg')),
  favorite_sports: ['crossfit', 'running', 'yoga'],
  )
richard  = User.create!(
  name: 'Richard',
  email: 'richard@example.fr',
  password: 'password',
  address: '13 Boulevard de Stalingrad, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/richard.jpg')),
  favorite_sports: ['running', 'crossfit', 'football'],
  )

puts '...Creating the rest of users...'

axel     = User.create!(
  name: 'Axel',
  email: Faker::Internet.free_email(name: 'axel'),
  password: 'password',
  address: '34 Rue de Coulmiers, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/axel.jpg')),
  favorite_sports: ['football', 'crossfit'],
  )
amelie   = User.create!(
  name: 'Amelie',
  email: Faker::Internet.free_email(name: 'amelie'),
  password: 'password',
  address: '16 Mail Pablo Picasso, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/amelie.jpg')),
  favorite_sports: ['yoga', 'running'],
  )
steven   = User.create!(
  name: 'Steven',
  email: Faker::Internet.free_email(name: 'steven'),
  password: 'password',
  address: '3 Allée Baco, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/steven.jpg')),
  favorite_sports: ['yoga', 'boxing', 'crossfit'],
  )
yanis    = User.create!(
  name: 'Yanis',
  email: Faker::Internet.free_email(name: 'yanis'),
  password: 'password',
  address: '9 Rue Gambetta, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/yanis.jpg')),
  favorite_sports: ['football', 'boxing'],
  )
bastien  = User.create!(
  name: 'Bastien',
  email: Faker::Internet.free_email(name: 'bastien'),
  password: 'password',
  address: '4 Rue Lorette de la Refoulais, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/bastien.jpg')),
  favorite_sports: ['yoga', 'football', 'running'],
  )
nassim   = User.create!(
  name: 'Nassim',
  email: Faker::Internet.free_email(name: 'nassim'),
  password: 'password',
  address: '2 Rue de la Biscuiterie, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/nassim.jpg')),
  favorite_sports: ['football', 'boxing'],
  )
nina     = User.create!(
  name: 'Nina',
  email: Faker::Internet.free_email(name: 'nina'),
  password: 'password',
  address: '6-8, 10 Avenue Carnot, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/nina.jpg')),
  favorite_sports: ['yoga','running'],
  )
volodia  = User.create!(
  name: 'Guillaume',
  email: Faker::Internet.free_email(name: 'guillaume'),
  password: 'password',
  address: '10 Rue Georges Clemenceau, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/volodia.jpg')),
  favorite_sports: ['football', 'crossfit'],
  )
mariette = User.create!(
  name: 'Mariette',
  email: Faker::Internet.free_email(name: 'mariette'),
  password: 'password',
  address: '2-20 Rue de la Marne, 44024 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/mariette.jpg')),
  favorite_sports: ['yoga', 'crossfit'],
  )
martin   = User.create!(
  name: 'martin',
  email: Faker::Internet.free_email(name: 'martin'),
  password: 'password',
  address: 'Quai Ceineray, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/martin.jpg')),
  favorite_sports: ['football', 'boxing'],
  )
pierret  = User.create!(
  name: 'Pierre',
  email: Faker::Internet.free_email(name: 'pierret'),
  password: 'password',
  address: '4 Place Marc Elder, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/pierret.jpg')),
  favorite_sports: ['yoga', 'crossfit'],
  )
pierref  = User.create!(
  name: 'Pierre',
  email: Faker::Internet.free_email(name: 'pierref'),
  password: 'password',
  address: '3 Rue Maréchal Joffre, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/pierref.jpg')),
  favorite_sports: ['boxing', 'running'],
  )
hugo     = User.create!(
  name: 'Hugo',
  email: Faker::Internet.free_email(name: 'hugo'),
  password: 'password',
  address: '4 Rue d\'Allonville, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/hugo.jpg')),
  favorite_sports: ['football'],
  )
nico     = User.create!(
  name: 'Nico',
  email: Faker::Internet.free_email(name: 'nico'),
  password: 'password',
  address: '134 Boulevard Ernest Dalby, 44100 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/nico.jpg')),
  favorite_sports: ['football', 'boxing'],
  )
cecile   = User.create!(
  name: 'Cecile',
  email: Faker::Internet.free_email(name: 'cecile'),
  password: 'password',
  address: '4 Avenue Millet, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/users/cecile.jpg')),
  favorite_sports: ['yoga'],
  )

romain   = User.create!(
  name: 'Romain',
  email: Faker::Internet.free_email(name: 'romain'),
  password: 'password',
  address: '3 Mail du Front populaire, 44200 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/romain.jpg')),
  favorite_sports: ['football', 'running'],
  )
charlene = User.create!(
  name: 'Charlene',
  email: Faker::Internet.free_email(name: 'charlene'),
  password: 'password',
  address: '10 Quai François Mitterrand, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/charlene.jpg')),
  favorite_sports: ['boxing', 'running', 'crossfit'],
  )
clement  = User.create!(
  name: 'Clement',
  email: Faker::Internet.free_email(name: 'clement'),
  password: 'password',
  address: '20 Quai des Antilles, 44200 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/clement.jpg')),
  favorite_sports: ['football'],
  )
fabrice  = User.create!(
  name: 'Fabrice',
  email: Faker::Internet.free_email(name: 'fabrice'),
  password: 'password',
  address: 'Zéro Newton, 4 Place Albert Camus, 44200 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/fabrice.jpg')),
  favorite_sports: ['football', 'running', 'crossfit'],
  )
pierro   = User.create!(
  name: 'Pierro',
  email: Faker::Internet.free_email(name: 'pierro'),
  password: 'password',
  address: '32 Boulevard Victor Hugo, 44200 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/pierro.jpg')),
  favorite_sports: ['football', 'running'],
  )
valentin = User.create!(
  name: 'Valentin',
  email: Faker::Internet.free_email(name: 'valentin'),
  password: 'password',
  address: '18 Boulevard Babin Chevaye, 44200 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/valentin.jpg')),
  favorite_sports: ['yoga', 'boxing'],
  )
victoire = User.create!(
  name: 'Victoire',
  email: Faker::Internet.free_email(name: 'victoire'),
  password: 'password',
  address: '6c Place François II, 44200 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/victoire.jpg')),
  favorite_sports: ['yoga', 'crossfit'],
  )
solene   = User.create!(
  name: 'Solene',
  email: Faker::Internet.free_email(name: 'solene'),
  password: 'password',
  address: '30 Quai Fernand Crouan, 44200 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/solene.jpg')),
  favorite_sports: ['yoga'],
  )
camille  = User.create!(
  name: 'Camille',
  email: Faker::Internet.free_email(name: 'camille'),
  password: 'password',
  address: '58 Boulevard Gustave Roch, 44261 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/camille.jpg')),
  favorite_sports: ['yoga', 'boxing'],
  )
ines     = User.create!(
  name: 'Ines',
  email: Faker::Internet.free_email(name: 'ines'),
  password: 'password',
  address: '4 Place Victor Mangin, 44200 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/ines.jpg')),
  favorite_sports: ['crossfit'],
  )

antoine  = User.create!(
  name: 'Antoine',
  email: Faker::Internet.free_email(name: 'antoine'),
  password: 'password',
  address: '11 bis Rue de la Bastille, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/antoine.jpg')),
  favorite_sports: ['boxing', 'running', 'crossfit'],

  )
carlotta = User.create!(
  name: 'Carlotta',
  email: Faker::Internet.free_email(name: 'carlotta'),
  password: 'password',
  address: '7 Place Canclaux, 44100 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/carlotta.jpg')),
  favorite_sports: ['running', 'crossfit'],

  )
felix    = User.create!(
  name: 'Felix',
  email: Faker::Internet.free_email(name: 'felix'),
  password: 'password',
  address: '2 Place Catinat, 44100 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/felix.jpg')),
  favorite_sports: ['football'],

  )
laura    = User.create!(
  name: 'Laura',
  email: Faker::Internet.free_email(name: 'laura'),
  password: 'password',
  address: '9 Rue Franklin, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/laura.jpg')),
  favorite_sports: ['running', 'crossfit'],

  )
marianne = User.create!(
  name: 'Marianne',
  email: Faker::Internet.free_email(name: 'marianne'),
  password: 'password',
  address: 'Place de Bretagne, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/marianne.jpg')),
  favorite_sports: ['yoga', 'running'],

  )
marion   = User.create!(
  name: 'Marion',
  email: Faker::Internet.free_email(name: 'marion'),
  password: 'password',
  address: '31 Avenue Camus, 44042 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/marion.jpg')),
  favorite_sports: ['yoga', 'boxing'],

  )
meryll   = User.create!(
  name: 'Meryll',
  email: Faker::Internet.free_email(name: 'meryll'),
  password: 'password',
  address: '12 Rue Voltaire, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/meryll.jpg')),
  favorite_sports: ['running', 'crossfit'],

  )
nicolas  = User.create!(
  name: 'Nioclas',
  email: Faker::Internet.free_email(name: 'nioclas'),
  password: 'password',
  address: '12 Place du Commerce, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/nicolas.jpg')),
  favorite_sports: ['running'],

  )
romainn  = User.create!(
  name: 'Romain',
  email: Faker::Internet.free_email(name: 'romainn'),
  password: 'password',
  address: '6 Place Aristide Briand, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/romainn.jpg')),
  favorite_sports: ['boxing', 'running'],
  )
thelma   = User.create!(
  name: 'Thelma',
  email: Faker::Internet.free_email(name: 'thelma'),
  password: 'password',
  address: '11 bis Rue des Dervallières, 44000 Nantes',
  photo: File.open(Rails.root.join('db/fixtures/other_users/thelma.jpg')),
  favorite_sports: ['yoga', 'crossfit'],

  )

puts 'Users created! Yiha!!!'
puts '...Creating availabilities...'

# julien availability
Availability.find_by!(user: julien, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: false)
Availability.find_by!(user: julien, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: julien, day_name: 'sunday').update!(slot_1: false, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: false)

# nikol availability
Availability.find_by!(user: nikol, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: false)
Availability.find_by!(user: nikol, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: nikol, day_name: 'friday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# richard availability
Availability.find_by!(user: richard, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: false)
Availability.find_by!(user: richard, day_name: 'friday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: false)
Availability.find_by!(user: richard, day_name: 'saturday').update!(slot_1: false, slot_2: true, slot_3: false, slot_4: true, slot_5: false, slot_6: false)


# axel availability
Availability.find_by!(user: axel, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: axel, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: axel, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: false)

# amelie availability
Availability.find_by!(user: amelie, day_name: 'saturday').update!(slot_1: true, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: false)
Availability.find_by!(user: amelie, day_name: 'sunday').update!(slot_1: false, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: false)

# steven availability
Availability.find_by!(user: steven, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: steven, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: steven, day_name: 'friday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# yanis availability
Availability.find_by!(user: yanis, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: yanis, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: yanis, day_name: 'thursday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# bastien availability
Availability.find_by!(user: bastien, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: bastien, day_name: 'thursday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: bastien, day_name: 'friday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# nassim availability
Availability.find_by!(user: nassim, day_name: 'saturday').update!(slot_1: true, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: false)
Availability.find_by!(user: nassim, day_name: 'sunday').update!(slot_1: true, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: false)

# nina availability
Availability.find_by!(user: nina, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)
Availability.find_by!(user: nina, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)

# volodia availability
Availability.find_by!(user: volodia, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: volodia, day_name: 'thursday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# mariette availability
Availability.find_by!(user: mariette, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: mariette, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: mariette, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# martin availability
Availability.find_by!(user: martin, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: martin, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# pierret availability
Availability.find_by!(user: pierret, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: pierret, day_name: 'friday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# pierref availability
Availability.find_by!(user: pierref, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: pierref, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: true, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: pierref, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# hugo availability
Availability.find_by!(user: hugo, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: true, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: hugo, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: true, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: hugo, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: true, slot_4: false, slot_5: false, slot_6: true)

# nico availability
Availability.find_by!(user: nico, day_name: 'thursday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: nico, day_name: 'friday').update!(slot_1: false, slot_2: false, slot_3: true, slot_4: false, slot_5: false, slot_6: true)

# cecile availability
Availability.find_by!(user: cecile, day_name: 'monday').update!(slot_1: true, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: cecile, day_name: 'friday').update!(slot_1: false, slot_2: false, slot_3: true, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: cecile, day_name: 'sunday').update!(slot_1: true, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: false)

# romain availability
Availability.find_by!(user: romain, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: romain, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# charlene availability
Availability.find_by!(user: charlene, day_name: 'monday').update!(slot_1: false, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: charlene, day_name: 'tuesday').update!(slot_1: true, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)
Availability.find_by!(user: charlene, day_name: 'wednesday').update!(slot_1: false, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# clement availability
Availability.find_by!(user: clement, day_name: 'saturday').update!(slot_1: false, slot_2: false, slot_3: true, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: clement, day_name: 'sunday').update!(slot_1: false, slot_2: true, slot_3: true, slot_4: false, slot_5: true, slot_6: false)

# fabrice availability
Availability.find_by!(user: fabrice, day_name: 'monday').update!(slot_1: true, slot_2: false, slot_3: true, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: fabrice, day_name: 'tuesday').update!(slot_1: true, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: fabrice, day_name: 'wednesday').update!(slot_1: true, slot_2: false, slot_3: true, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: fabrice, day_name: 'thursday').update!(slot_1: true, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: fabrice, day_name: 'friday').update!(slot_1: true, slot_2: false, slot_3: true, slot_4: false, slot_5: false, slot_6: true)

# pierro availability
Availability.find_by!(user: pierro, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)
Availability.find_by!(user: pierro, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)

# valentin availability
Availability.find_by!(user: valentin, day_name: 'monday').update!(slot_1: false, slot_2: true, slot_3: false, slot_4: true, slot_5: false, slot_6: true)
Availability.find_by!(user: valentin, day_name: 'thursday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)
Availability.find_by!(user: valentin, day_name: 'saturday').update!(slot_1: true, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: false)

# victoire availability
Availability.find_by!(user: victoire, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: victoire, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: victoire, day_name: 'sunday').update!(slot_1: true, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# solene availability
Availability.find_by!(user: solene, day_name: 'monday').update!(slot_1: true, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: solene, day_name: 'friday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: solene, day_name: 'saturday').update!(slot_1: true, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: false)

# camille availability
Availability.find_by!(user: camille, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: camille, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# ines availability
Availability.find_by!(user: ines, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)
Availability.find_by!(user: ines, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)
Availability.find_by!(user: ines, day_name: 'thursday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)

# antoine availability
Availability.find_by!(user: antoine, day_name: 'monday').update!(slot_1: true, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: antoine, day_name: 'tuesday').update!(slot_1: true, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# carlotta availability
Availability.find_by!(user: carlotta, day_name: 'saturday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: true, slot_5: false, slot_6: false)
Availability.find_by!(user: carlotta, day_name: 'sunday').update!(slot_1: false, slot_2: true, slot_3: true, slot_4: false, slot_5: false, slot_6: false)

# felix availability
Availability.find_by!(user: felix, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: true, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: felix, day_name: 'tuesday').update!(slot_1: false, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: felix, day_name: 'friday').update!(slot_1: false, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# laura availability
Availability.find_by!(user: laura, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: laura, day_name: 'sunday').update!(slot_1: false, slot_2: true, slot_3: true, slot_4: false, slot_5: true, slot_6: false)

# marianne availability
Availability.find_by!(user: marianne, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)
Availability.find_by!(user: marianne, day_name: 'friday').update!(slot_1: true, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# marion availability
Availability.find_by!(user: marion, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)
Availability.find_by!(user: marion, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)
Availability.find_by!(user: marion, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)
Availability.find_by!(user: marion, day_name: 'thursday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: true, slot_6: true)

# meryll availability
Availability.find_by!(user: meryll, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# nicolas availability
Availability.find_by!(user: nicolas, day_name: 'monday').update!(slot_1: true, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: false)
Availability.find_by!(user: nicolas, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: nicolas, day_name: 'thursday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)

# romainn availability
Availability.find_by!(user: romainn, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: romainn, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: romainn, day_name: 'sunday').update!(slot_1: false, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: false)

# thelma availability
Availability.find_by!(user: thelma, day_name: 'monday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: thelma, day_name: 'tuesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: thelma, day_name: 'wednesday').update!(slot_1: false, slot_2: false, slot_3: false, slot_4: false, slot_5: false, slot_6: true)
Availability.find_by!(user: thelma, day_name: 'sunday').update!(slot_1: true, slot_2: true, slot_3: false, slot_4: false, slot_5: false, slot_6: true)


puts 'Availabilities created !'
puts '...Creating events...'

yoga_monday     = Event.create!(
  sport: 'yoga',
  start_at: '2019-08-26 20:00:00',
  duration: 90,
  level: 1,
  capacity: 10,
  available: true,
  address: '26 Boulevard de Stalingrad, 44000 Nantes',
  description: 'Yoga studio and well-being: whatever your desires,
  your availability, you will find the yoga that suits you!'
  )
yoga_wednesday  = Event.create!(
  sport: 'yoga',
  start_at: '2019-08-28 20:00:00',
  duration: 90,
  level: 1,
  capacity: 10,
  available: true,
  address: '26 Boulevard de Stalingrad, 44000 Nantes',
  description: 'Yoga studio and well-being: whatever your desires,
  your availability, you will find the yoga that suits you!'
  )
yoga_friday     = Event.create!(
  sport: 'yoga',
  start_at: '2019-08-30 20:00:00',
  duration: 90,
  level: 1,
  capacity: 10,
  available: true,
  address: '26 Boulevard de Stalingrad, 44000 Nantes',
  description: 'Yoga studio and well-being: whatever your desires,
  your availability, you will find the yoga that suits you!'
  )

crossfit_monday    = Event.create!(
  sport: 'crossfit',
  start_at: '2019-08-26 19:00:00',
  duration: 60,
  level: 2,
  capacity: 50,
  available: true,
  address: 'Rue Stanislas Baudry, 44000 Nantes',
  description: 'All appointments are published the night before and
  should be consulted first before leaving home.
  In case of cancellation / or moving of place, we do our best to
  report it 1h before minimum! Stay connected!'
  )
crossfit_tuesday   = Event.create!(
  sport: 'crossfit',
  start_at: '2019-08-27 19:00:00',
  duration: 60,
  level: 2,
  capacity: 50,
  available: true,
  address: 'Rue Stanislas Baudry, 44000 Nantes',
  description: 'All appointments are published the night before and
  should be consulted first before leaving home.
  In case of cancellation / or moving of place, we do our best to
  report it 1h before minimum! Stay connected!'
  )
crossfit_wednesday = Event.create!(
  sport: 'crossfit',
  start_at: '2019-08-28 19:00:00',
  duration: 60,
  level: 2,
  capacity: 50,
  available: true,
  address: 'Rue Stanislas Baudry, 44000 Nantes',
  description: 'All appointments are published the night before and
  should be consulted first before leaving home.
  In case of cancellation / or moving of place, we do our best to
  report it 1h before minimum! Stay connected!'
  )
crossfit_thursday  = Event.create!(
  sport: 'crossfit',
  start_at: '2019-08-29 19:00:00',
  duration: 60,
  level: 2,
  capacity: 50,
  available: true,
  address: 'Rue Stanislas Baudry, 44000 Nantes',
  description: 'All appointments are published the night before and
  should be consulted first before leaving home.
  In case of cancellation / or moving of place, we do our best to
  report it 1h before minimum! Stay connected!'
  )
crossfit_friday   = Event.create!(
  sport: 'crossfit',
  start_at: '2019-08-30 19:00:00',
  duration: 60,
  level: 2,
  capacity: 50,
  available: true,
  address: 'Rue Stanislas Baudry, 44000 Nantes',
  description: 'All appointments are published the night before and
  should be consulted first before leaving home.
  In case of cancellation / or moving of place, we do our best to
  report it 1h before minimum! Stay connected!'
  )
crossfit_saturday  = Event.create!(
  sport: 'crossfit',
  start_at: '2019-08-31 16:00:00',
  duration: 60,
  level: 2,
  capacity: 20,
  available: true,
  address: 'Rue Stanislas Baudry, 44000 Nantes',
  description: 'All appointments are published the night before and
  should be consulted first before leaving home.
  In case of cancellation / or moving of place, we do our best to
  report it 1h before minimum! Stay connected!'
  )
crossfit_sunday    = Event.create!(
  sport: 'crossfit',
  start_at: '2019-09-01 16:00:00',
  duration: 60,
  level: 2,
  capacity: 20,
  available: true,
  address: 'Rue Stanislas Baudry, 44000 Nantes',
  description: 'All appointments are published the night before and
  should be consulted first before leaving home.
  In case of cancellation / or moving of place, we do our best to
  report it 1h before minimum! Stay connected!'
  )

boxing_tuesday   = Event.create!(
  sport: 'boxing',
  start_at: '2019-08-27 18:00:00',
  duration: 120,
  level: 3,
  capacity: 5,
  available: true,
  address: '38 Rue du Pré Gauchet, 44000 Nantes',
  description: 'In the heart of the city center of Nantes, we provide
  2 times a week Thai boxing, full contact and kick boxing classes for adults.'
  )
boxing_thursday  = Event.create!(
  sport: 'boxing',
  start_at: '2019-08-29 18:00:00',
  duration: 120,
  level: 3,
  capacity: 5,
  available: true,
  address: '38 Rue du Pré Gauchet, 44000 Nantes',
  description: 'In the heart of the city center of Nantes, we provide
  2 times a week Thai boxing, full contact and kick boxing classes for adults.'
  )

football_friday   = Event.create!(
  sport: 'football',
  start_at: '2019-08-30 18:00:00',
  duration: 60,
  level: 1,
  capacity: 10,
  available: true,
  address: '2 Boulevard Alexandre Millerand, 44200 Nantes',
  description: 'The fields are synthetic last generation designed for
  the practice of football 5.
  We offered indoor and outdoor courts equipped to film and review matches.
  At each match, the centers provide balloons and chasubles.'
  )
football_saturday = Event.create!(
  sport: 'football',
  start_at: '2019-08-31 18:00:00',
  duration: 60,
  level: 1,
  capacity: 10,
  available: true,
  address: '2 Boulevard Alexandre Millerand, 44200 Nantes',
  description: 'The fields are synthetic last generation designed for
  the practice of football 5.
  We offered indoor and outdoor courts equipped to film and review matches.
  At each match, the centers provide balloons and chasubles.'
  )

running_saturday  = Event.create!(
  sport: 'running',
  start_at: '2019-08-31 10:30:00',
  duration: 60,
  level: 2,
  capacity: 5,
  available: true,
  address: '2 Place des Garennes, 44100 Nantes',
  description: 'Regardless of the course chosen, the trip breaks down
  into 4 1.5 km running phases interspersed with 3 sessions of body
  weight exercises (challenge wrapping, squats, burpees ...)
  and all this, in a good mood!'
  )
running_sunday    = Event.create!(
  sport: 'running',
  start_at: '2019-09-01 10:30:00',
  duration: 60,
  level: 2,
  capacity: 5,
  available: true,
  address: '2 Place des Garennes, 44100 Nantes',
  description: 'Regardless of the course chosen, the trip breaks down
  into 4 1.5 km running phases interspersed with 3 sessions of body
  weight exercises (challenge wrapping, squats, burpees ...)
  and all this, in a good mood!'
  )

puts 'Events created!'
puts '...Creating user events...'

# julien events
UserEvent.create!(
  user: julien,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: julien,
  event: yoga_wednesday,
  matching: true,
  )
UserEvent.create!(
  user: julien,
  event: running_sunday,
  matching: true,
  )

# nikol events
UserEvent.create!(
  user: nikol,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: nikol,
  event: yoga_wednesday,
  matching: true,
  )
UserEvent.create!(
  user: nikol,
  event: yoga_friday,
  matching: true,
  )

# richard events
UserEvent.create!(
  user: richard,
  event: crossfit_wednesday,
  matching: true,
  )
UserEvent.create!(
  user: richard,
  event: football_friday,
  matching: true,
  )
UserEvent.create!(
  user: richard,
  event: running_saturday,
  matching: true,
  )


# axel events
UserEvent.create!(
  user: axel,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: axel,
  event: crossfit_wednesday,
  matching: true,
  )
UserEvent.create!(
  user: axel,
  event: crossfit_sunday,
  matching: true,
  )

# amelie events
UserEvent.create!(
  user: amelie,
  event: running_saturday,
  matching: true,
  )
UserEvent.create!(
  user: amelie,
  event: running_sunday,
  matching: true,
  )

# steven events
UserEvent.create!(
  user: steven,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: steven,
  event: crossfit_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: steven,
  event: crossfit_friday,
  matching: true,
  )

# yanis events
UserEvent.create!(
  user: yanis,
  event: yoga_monday,
  matching: true,
  )
UserEvent.create!(
  user: yanis,
  event: yoga_wednesday,
  matching: true,
  )
UserEvent.create!(
  user: yanis,
  event: boxing_thursday,
  matching: true,
  )

# bastien events
UserEvent.create!(
  user: bastien,
  event: crossfit_wednesday,
  matching: true,
  )
UserEvent.create!(
  user: bastien,
  event: crossfit_thursday,
  matching: true,
  )
UserEvent.create!(
  user: bastien,
  event: crossfit_friday,
  matching: true,
  )

# nassim events
UserEvent.create!(
  user: nassim,
  event: running_saturday,
  matching: true,
  )
UserEvent.create!(
  user: nassim,
  event: running_sunday,
  matching: true,
  )

# nina events
UserEvent.create!(
  user: nina,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: nina,
  event: yoga_wednesday,
  matching: true,
  )

# volodia events
UserEvent.create!(
  user: volodia,
  event: crossfit_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: volodia,
  event: crossfit_thursday,
  matching: true,
  )
# mariette events
UserEvent.create!(
  user: mariette,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: mariette,
  event: boxing_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: mariette,
  event: crossfit_wednesday,
  matching: true,
  )

# martin events
UserEvent.create!(
  user: martin,
  event: boxing_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: martin,
  event: yoga_wednesday,
  matching: true,
  )

# pierret events
UserEvent.create!(
  user: pierret,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: pierret,
  event: football_friday,
  matching: true,
  )

# pierref events
UserEvent.create!(
  user: pierref,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: pierref,
  event: crossfit_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: pierref,
  event: yoga_wednesday,
  matching: true,
  )

# hugo events
UserEvent.create!(
  user: hugo,
  event: yoga_monday,
  matching: true,
  )
UserEvent.create!(
  user: hugo,
  event: crossfit_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: hugo,
  event: yoga_wednesday,
  matching: true,
  )

# nico events
UserEvent.create!(
  user: nico,
  event: boxing_thursday,
  matching: true,
  )
UserEvent.create!(
  user: nico,
  event: football_friday,
  matching: true,
  )

# cecile events
UserEvent.create!(
  user: cecile,
  event: yoga_monday,
  matching: true,
  )
UserEvent.create!(
  user: cecile,
  event: yoga_friday,
  matching: true,
  )
UserEvent.create!(
  user: cecile,
  event: running_sunday,
  matching: true,
  )

# romain events
UserEvent.create!(
  user: romain,
  event: boxing_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: romain,
  event: crossfit_wednesday,
  matching: true,
  )

# charlene events
UserEvent.create!(
  user: charlene,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: charlene,
  event: crossfit_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: charlene,
  event: crossfit_wednesday,
  matching: true,
  )

# clement events
UserEvent.create!(
  user: clement,
  event: football_saturday,
  matching: true,
  )
UserEvent.create!(
  user: clement,
  event: crossfit_sunday,
  matching: true,
  )

# fabrice events
UserEvent.create!(
  user: fabrice,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: fabrice,
  event: crossfit_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: fabrice,
  event: crossfit_wednesday,
  matching: true,
  )
UserEvent.create!(
  user: fabrice,
  event: crossfit_thursday,
  matching: true,
  )
UserEvent.create!(
  user: fabrice,
  event: crossfit_friday,
  matching: true,
  )

# pierro events
UserEvent.create!(
  user: pierro,
  event: yoga_monday,
  matching: true,
  )
UserEvent.create!(
  user: pierro,
  event: crossfit_wednesday,
  matching: true,
  )

# valentin events
UserEvent.create!(
  user: valentin,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: valentin,
  event: boxing_thursday,
  matching: true,
  )
UserEvent.create!(
  user: valentin,
  event: running_saturday,
  matching: true,
  )

# victoire events
UserEvent.create!(
  user: victoire,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: victoire,
  event: crossfit_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: victoire,
  event: running_sunday,
  matching: true,
  )

# solene events
UserEvent.create!(
  user: solene,
  event: yoga_monday,
  matching: true,
  )
UserEvent.create!(
  user: solene,
  event: yoga_friday,
  matching: true,
  )
UserEvent.create!(
  user: solene,
  event: running_saturday,
  matching: true,
  )

# camille events
UserEvent.create!(
  user: camille,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: camille,
  event: yoga_wednesday,
  matching: true,
  )

# ines events
UserEvent.create!(
  user: ines,
  event: yoga_monday,
  matching: true,
  )
UserEvent.create!(
  user: ines,
  event: crossfit_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: ines,
  event: boxing_thursday,
  matching: true,
  )

# antoine events
UserEvent.create!(
  user: antoine,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: antoine,
  event: boxing_tuesday,
  matching: true,
  )

# carlotta events
UserEvent.create!(
  user: carlotta,
  event: crossfit_saturday,
  matching: true,
  )
UserEvent.create!(
  user: carlotta,
  event: running_sunday,
  matching: true,
  )

# felix events
UserEvent.create!(
  user: felix,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: felix,
  event: boxing_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: felix,
  event: football_friday,
  matching: true,
  )

# laura events
UserEvent.create!(
  user: laura,
  event: crossfit_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: laura,
  event: running_sunday,
  matching: true,
  )

# marianne events
UserEvent.create!(
  user: marianne,
  event: crossfit_wednesday,
  matching: true,
  )
UserEvent.create!(
  user: marianne,
  event: yoga_friday,
  matching: true,
  )

# marion events
UserEvent.create!(
  user: marion,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: marion,
  event: boxing_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: marion,
  event: crossfit_wednesday,
  matching: true,
  )
UserEvent.create!(
  user: pierref,
  event: boxing_thursday,
  matching: true,
  )

# meryll events
UserEvent.create!(
  user: meryll,
  event: yoga_monday,
  matching: true,
  )

# nicolas events
UserEvent.create!(
  user: nicolas,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: nicolas,
  event: boxing_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: nicolas,
  event: boxing_thursday,
  matching: true,
  )

# romainn events
UserEvent.create!(
  user: romainn,
  event: yoga_monday,
  matching: true,
  )
UserEvent.create!(
  user: romainn,
  event: boxing_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: romainn,
  event: running_sunday,
  matching: true,
  )

# thelma events
UserEvent.create!(
  user: thelma,
  event: crossfit_monday,
  matching: true,
  )
UserEvent.create!(
  user: thelma,
  event: crossfit_tuesday,
  matching: true,
  )
UserEvent.create!(
  user: thelma,
  event: yoga_wednesday,
  matching: true,
  )
UserEvent.create!(
  user: thelma,
  event: running_sunday,
  matching: true,
  )


puts 'User events created!'
puts 'Seeding terminated!'
