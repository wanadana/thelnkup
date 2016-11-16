# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

puts "Creating categories"

categories = [
 {
   name: "Sports",
   photo: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRmSW8d_gQyK4sY96g2Tmszc4G-TitCuLyoDWimTFdDpLsZMzir"
   },
 {
   name: "Politics",
   photo: "http://betanews.com/wp-content/uploads/2014/05/politician-292x300.jpg"
   },
 {
   name: "Tech",
   photo: "https://s-media-cache-ak0.pinimg.com/originals/18/71/bf/1871bf7ec22b9ac5e70fded2a7a58666.jpg"
   },
 {
   name: "Cooking",
   photo: "http://blog.chegg.com/wp-content/uploads/2013/02/cooking-college.jpg"
   },
 {
   name: "Photography",
   photo: "http://panacheschool.com/wp-content/uploads/2015/04/photography.jpg"
   },
 {
   name: "Books",
   photo: "http://az616578.vo.msecnd.net/files/2016/01/03/635873821517718970351055939_Stack-of-books-great-education.jpg"
   },
 {
   name: "Music",
   photo: "http://static.wixstatic.com/media/77cdee_b0993d5e4a7246669be470e7d6f31840~mv2.jpg"
   },
 {
   name: "LGBTQ",
   photo: "http://www.corpgov.net/wp-content/uploads/2016/08/LGBTQ.jpeg"
   },
 {
   name: "Dance",
   photo: "https://s-media-cache-ak0.pinimg.com/originals/9f/e3/fb/9fe3fb539d64cec37a7e5b824b527ff6.jpg"
   },
 {
   name: "Games",
   photo: "https://yt3.ggpht.com/2tDwwVVEuy0ja92htLiC-JZdfqUB1ogR--jjSph3Ybk068mSQkoOhG9YdvYvgDrWyjCIvi9JOubtFIyi=s900-nd-c-c0xffffffff-rj-k-no"
   },
 {
   name: "Fashion",
   photo: "https://s-media-cache-ak0.pinimg.com/originals/80/ad/a8/80ada8d6b2b2f1867bde618fd5107958.jpg"
   },
]

categories.each { |category| Category.create(category) }
