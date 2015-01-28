Note.delete_all

10.times do
  Note.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph(3)
  )
end
