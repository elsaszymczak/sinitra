puts "------------------"
puts "Removing posts"
Post.destroy_all
puts "No more posts"

puts "------------------"
puts "Removing comments"
Comment.destroy_all
puts "No more comments"

puts "------------------"
puts "Creating posts"
puts "------------------"



Post.create(
  title: "Mon premier article",
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id ratione harum illo, dicta minima rerum quod natus cupiditate voluptatibus rem! Amet reprehenderit voluptatum animi, eligendi quia quos reiciendis veritatis magni.",
  photo: "https://unsplash.it/600?image=0",
  rating: "5"
)

Post.create(
  title: "Mon premier article",
  content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id ratione harum illo, dicta minima rerum quod natus cupiditate voluptatibus rem! Amet reprehenderit voluptatum animi, eligendi quia quos reiciendis veritatis magni.",
  photo: "https://unsplash.it/600?image=0",
  rating: "5"
)

Post.create(
  title: "Tout sur mon chat",
  content: "also to Kim’s hair and makeup Lorraine jewelry and the whole style squad at Balmain and the Yeezy team. When companies doubt me they doubt us. Wes daytime",
  rating: "4"
)

Post.create(
  title: "Tout sur mon chien",
  content: "I love Rick Owens’ bed design but the back is too high for the beams and angle of the ceiling And now I look and look around and there’s so many Kanyes Man that'd be so Kanye And I promise the power is in the people and I will use the power given by the people to bring everything I have back to the people.",
  photo: "https://unsplash.it/600?image=2",
)

Post.create(
  title: "L'affaire Cromas Town",
  content: " Thank you Anna for the invite thank you to the whole Vogue team Thank you to everybody who made The Life of Pablo the number 1 album in the world!!! What if Kanye made a song about Kanye ",
  photo: "https://unsplash.it/600?image=3",
  rating: "4"
)

puts "------------------"
puts "Posts created"
puts "------------------"

puts "------------------"
puts "Creating comments"
puts "------------------"

Comment.create(
  content: "super",
  post_id: 1,
)

Comment.create(
  content: "cool!",
  post_id: 1,
)

Comment.create(
  content: "bien écrit",
  post_id: 1,
)

Comment.create(
  content: "first!",
  post_id: 1,
)

Comment.create(
  content: "why is everyone speaking French here?",
  post_id: 1,
)

Comment.create(
  content: "J'ai préféré l'autre article",
  post_id: 2,
)

Comment.create(
  content: "je n'ai pas vraiment compris le deuxième paragraphe!",
  post_id: 2,
)

Comment.create(
  content: "une suite?",
  post_id: 2,
)

Comment.create(
  content: "A revoir",
  post_id: 3,
)

Comment.create(
  content: "Découvrez ma page Facebook! @Kamsoerzi",
  post_id: 3,
)

Comment.create(
  content: "Nul",
  post_id: 4,
)

Comment.create(
  content: "J'ai adoré mais j'aurais préféré qu'elle finisse avec John",
  post_id: 5,
)

Comment.create(
  content: "good article",
  post_id: 5,
)

Comment.create(
  content: "Ajouté dans mes favoris!",
  post_id: 5,
)

puts "------------------"
puts "Comments created"
puts "------------------"

puts "Seed done!"

