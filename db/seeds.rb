puts "🌱 Seeding folders..."
f1 = Folder.create(name: "Default")
f2 = Folder.create(name: "Another folder")
f3 = Folder.create(name: "Yet another folder")


puts "🌱 Seeding documents..."
n1 = Note.create(title: Faker::Artist.name, body: "Is he one of the ninja turtles?", folder: f1)
n2 = Note.create(title: "Hoooooly", body: "blah blah", folder: f1)
n3 = Note.create(title: "yesssss", body: "nooooo", folder: f2)
n4 = Note.create(title: "possibly", body: "perhaps", folder: f3)

puts "✅ Done seeding!"
