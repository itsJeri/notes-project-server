puts "🌱 Seeding folders..."
f1 = Folder.create(id: UUID.new.generate, name: "Default")
f2 = Folder.create(id: UUID.new.generate, name: "Another folder")
f3 = Folder.create(id: UUID.new.generate, name: "Yet another folder")


puts "🌱 Seeding documents..."
n1 = Note.create(id: UUID.new.generate, title: Faker::Artist.name, body: "Is he one of the ninja turtles?", folder: f1)
n2 = Note.create(id: UUID.new.generate, title: "Hoooooly", body: "blah blah", folder: f1)
n3 = Note.create(id: UUID.new.generate, title: "yesssss", body: "nooooo", folder: f2)
n4 = Note.create(id: UUID.new.generate, title: "possibly", body: "perhaps", folder: f3)

puts "✅ Done seeding!"
