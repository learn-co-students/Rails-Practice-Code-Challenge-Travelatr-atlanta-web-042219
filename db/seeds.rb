30.times do
 Destination.create({
   name: Faker::GameOfThrones.city,
   country: Faker::Address.country
 })
end


10.times do
 Blogger.create({
   name: Faker::Name.name,
   bio: Faker::Hipster.paragraph,
   age: (13..100).to_a.sample
 })
end

6.times do
 Post.create({
   title: Faker::Hipster.sentence(3),
   content: Faker::Hipster.paragraphs(4),
   likes: 0,
   blogger_id: Blogger.all.sample.id,
   destination_id: Destination.all.sample.id
 })
end
