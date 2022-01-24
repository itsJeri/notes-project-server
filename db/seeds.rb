puts "🌱 Seeding folders..."
f1 = Folder.create(name: "Artists")

puts "🌱 Seeding documents..."
f1 = Document.create(title: Faker::Artist.name, body: "Is he one of the ninja turtles?", folder: f1)

puts "✅ Done seeding!"
