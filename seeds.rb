Book.destroy_all
Topic.destroy_all
BookTopic.destroy_all

lord_of_the_rings = Book.create!(name: "Lord of the Rings")
the_hobbit = Book.create!(name: "The Hobbit")
resurrection = Book.create!(name: "Resurrection")
thinking_fast_and_slow = Book.create!(name: "Thinking Fast and Slow")

inspirational = Topic.create!(name: "inspirational")
thoughtful = Topic.create!(name: "thoughtful")
best_seller = Topic.create!(name: "best seller")

lord_of_the_rings.topics << [inspirational, best_seller]

# THIS TURNS INTO...
#
# BookTopic.create!(book_id: lord_of_the_rings.id, topic_id: inspirational.id)
# BookTopic.create!(book_id: lord_of_the_rings.id, topic_id: best_seller.id)
#
# OR...
#
# BookTopic.create!(book: lord_of_the_rings, topic: inspirational)
# BookTopic.create!(book: lord_of_the_rings, topic: best_seller)

resurrection.topics << [thoughtful]
thinking_fast_and_slow.topics << [thoughtful]
the_hobbit.topics << [thoughtful, inspirational, best_seller]
