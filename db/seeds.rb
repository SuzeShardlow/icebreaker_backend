# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Group.destroy_all

User.create([
  { username: "sshardlow",
    firstname: "Suze",
    lastname: "Shardlow",
    email: "suze@suze.com",
    jobtitle: "Junior Full-Stack Web Developer",
    linkedinurl: "https://www.linkedin.com/in/SuzeShardlow",
    bio: "Hi, I'm Suze.  I am starting out in web development and would like to meet others who are working in this field.",
    password: "p",
    password_confirmation: "p" },

  { username: "jyoung",
    firstname: "Jennifer",
    lastname: "Young",
    email: "jen@jen.com",
    jobtitle: "JavaScript Developer",
    bio: "Hi, I'm Jennifer.  I am looking for my second JavaScript role and am keen to meet up and learn from others.",
    password: "p",
    password_confirmation: "p" },

  ])

Group.create([
  { name: "Founders and Coders", url: "founderscoders" },
  { name: "London JavaScript Community", url: "london-javascript-community" },
  { name: "Ladies of Code (London)", url: "ladies-of-code-uk" },
  { name: "London App Brewery", url: "londonappbrewery" },
  { name: "Women Who Code London", url: "women-who-code-london" }
  ])
