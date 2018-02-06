# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# from course, seeding - Trevor l45

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique vehicula purus, sed efficitur quam viverra sit amet. Curabitur quis ipsum vel dui consectetur efficitur. Duis vitae turpis mattis, commodo urna a, mollis mi. Nullam vel pellentesque eros, sit amet scelerisque risus. Ut vestibulum sed diam id finibus. Suspendisse dictum viverra nisi nec posuere. Phasellus at metus massa. In nec massa urna. Integer finibus dolor vitae tempus pellentesque. "
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |item|
  Portfolio.create!(
    title: "Portfolio Title: #{item}",
    subtitle: "My Great Service",
    body: "Nullam vel pellentesque eros, sit amet scelerisque risus. Ut vestibulum sed diam id finibus. Suspendisse dictum viverra nisi nec posuere. Phasellus at metus massa.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio things created"