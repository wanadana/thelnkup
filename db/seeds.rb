# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
User.destroy_all
Group.destroy_all
Membership.destroy_all

puts "Creating DB content"

c16=Category.create(name:"Art", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f5bc.svg")
c4=Category.create(name:"Cooking", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f372.svg")
c9=Category.create(name:"Dance", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f483.svg")
c13=Category.create(name:"Family", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f468-1f469-1f467-1f466.svg")
c11=Category.create(name:"Fashion", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f476.svg")
c5=Category.create(name:"Film & Photography", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f4f8.svg")
c10=Category.create(name:"Games", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f3ae.svg")
c18=Category.create(name:"Languages", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f5fa.svg")
c8=Category.create(name:"LGBTQ", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f3f3-1f308.svg")
c6=Category.create(name:"Literature", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f4da.svg")
c17=Category.create(name:"Mindfulness", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f549.svg")
c12=Category.create(name:"Movies", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f4fd.svg")
c7=Category.create(name:"Music", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f3bc.svg")
c14=Category.create(name:"Pets", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f43e.svg")
c2=Category.create(name:"Politics", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f5e3.svg")
c1=Category.create(name:"Sports", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f93c.svg")
c3=Category.create(name:"Tech", photo:"http://emojione.com/wp-content/uploads/assets/emojis/1f5a5.svg")
c15=Category.create(name:"Travel", photo:"http://emojione.com/wp-content/uploads/assets/emojis/2708.svg")

u1=User.create(first_name:"John", last_name:"Tomkins", photo:"https://s3-us-west-2.amazonaws.com/lumoid-photos/Inspiration/Canon-People-2.jpg", email:"john@tomkins.com", location:"London", mobile:"+44 7700900689", password:"letmein", password_confirmation:"letmein")
u2=User.create(first_name:"Lisa", last_name:"Alkin", photo:"https://s-media-cache-ak0.pinimg.com/originals/07/35/79/0735796a20d4aee1773f35ed2b2034ef.jpg", email:"lisa@alkin.com", location:"San Francisco", mobile:"+1 2124139795", password:"letmein", password_confirmation:"letmein")
u3=User.create(first_name:"Matthew", last_name:"Woods", photo:"http://www.designboom.com/wp-content/uploads/2014/08/ino-zeljak-stitches-two-different-people-portraits-designboom-07.jpg", email:"matthew@woods.com", location:"Amsterdam", mobile:"+31 0667903675", password:"letmein", password_confirmation:"letmein")
u4=User.create(first_name:"Antoine", last_name:"Dubois", photo:"http://www4.pictures.zimbio.com/gi/39th+Annual+People+Choice+Awards+Portraits+lza8vaU_QsZx.jpg", email:"antoine@dubois.com", location:"Paris", mobile:"+33 509758351", password:"letmein", password_confirmation:"letmein")
u5=User.create(first_name:"Camila", last_name:"Gallego", photo:"http://cdn.instantshift.netdna-cdn.com/wp-content/uploads/2011/10/httgppp-02.jpg", email:"Camila@Gallego.com", location:"Barcelona", mobile:"+34 7401 049141", password:"letmein", password_confirmation:"letmein")
u6=User.create(first_name:"Pontus", last_name:"Johansonn", photo:"http://media.istockphoto.com/photos/portrait-of-smiling-young-man-outdoors-picture-id478022628?k=6&m=478022628&s=170667a&w=0&h=18JwG_PEtRlbcJgQFz2Hjyp78xtnSwNaV9BuhJYUDB0=", email:"pontus@johansson.com", location:"Stockholm", mobile:"+46 1523 089264", password:"letmein", password_confirmation:"letmein")

g1=Group.new(title:"Football Fanatics", description:"We love everything about football! In this group we cover all topics of football concerning the Europian big leagues. We also like to go the stadium or pub to watch the game we love", location:"London",  link:"Ak6a1ueynT27hbe9Jper5c", capacity:45, category_id:c1.id, question:"Why would you like to join?")
g1.remote_photo_url = "http://i4.mirror.co.uk/incoming/article5530912.ece/ALTERNATES/s615/Arsenal-fans-singing-in-the-stands.jpg"
g1.save!
g2=Group.new(title:"Brexit", description:"What is life going to be like without the UK in the EU?", location:"London", capacity:50, link:"BiUOl8ffeFc2UnoKqn41TI", category_id:c2.id, question:"Why would you like to join?")
g2.remote_photo_url = "http://ichef.bbci.co.uk/news/624/cpsprodpb/1AD3/production/_90076860_thinkstockphotos-526561176.jpg"
g2.save!
g3=Group.new(title:"Gadgets", description:"Tech gadgets are awesome! We love all to discuss the newest tech or advice eachother on which gadget to purcahse", location:"San Francisco", link:"K9N5ityyrMdGSbEdragJOz", capacity:85, category_id:c3.id, question:"Why would you like to join?")
g3.remote_photo_url = "http://rodrigostoledo.com/wp-content/uploads/2013/10/gadgetsbag.jpg"
g3.save!
g4=Group.new(title:"Cooking Club", description:"What is there not to love about Food? We share recipes, teach each other new techniques and share our appreciation for food", location:"Paris", link:"KiPw8L8PwIOCfLW0f5LVa9", capacity:12, category_id:c4.id, question:"Why would you like to join?")
g4.remote_photo_url = "https://lh4.googleusercontent.com/-Jxf1olKERJ0/AAAAAAAAAAI/AAAAAAAAAGo/8CLruKO0Au0/photo.jpg"
g4.save!
g5=Group.new(title:"Shooting in the Wild", description:"Wildlife photography", location:"Stockholm", link:"3ibxlPVSl90LlgF9ltW5zS", capacity:10, category_id:c5.id, question:"Why would you like to join?")
g5.remote_photo_url = "http://i.dailymail.co.uk/i/pix/2016/02/19/12/315D060D00000578-0-image-a-1_1455885828043.jpg"
g5.save!
g6=Group.new(title:"Book Club", description:"Your online bookclub", location:"Amsterdam", link:"1IisCspws5WH7TiNcfCsz9", capacity:10, category_id:c6.id, question:"Why would you like to join?")
g6.remote_photo_url = "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR_Jb96ATDPtDuh5bUn0occRYA3h9CMqjtaiQlK6am5-M1ajCoRcA"
g6.save!
g7=Group.new(title:"Hip Hop Hooray", description:"Old school, new school, it doesn't matter. Hip Hop is life! We share and talk about any kind of Hip Hop in this community", location:"New York", link:"3Ha2xufQ2XZFx29jrtE8M1", capacity:38, category_id:c7.id, question:"Why would you like to join?")
g7.remote_photo_url = "https://pbs.twimg.com/profile_images/592710283199705089/7ssX_l7I.jpg"
g7.save!
g8=Group.new(title:"Coming out", description:"In this group we show support to everyone. Whether you are unsure about your sexuality, or do not know how to come out to your friends and family, we are here to help you.", location:"Amsterdam", link:"7yQqprRJHGV9EUjexOsHPV", capacity:47, category_id:c8.id, question:"Why would you like to join?")
g8.remote_photo_url = "https://static1.squarespace.com/static/53b5651ce4b09f05a79b7fb4/t/546cc246e4b05489a99d5d43/1416413767681/post2.jpg?format=1500w"
g8.save!
g9=Group.new(title:"How smooth can you move?", description:"Dance Dance Dance - These hips don't lie", location:"Los Angeles", link:"JsM91VRL2N421nKjRoUcbF", capacity:13, category_id:c9.id, question:"Why would you like to join?")
g9.remote_photo_url = "https://s-media-cache-ak0.pinimg.com/originals/c4/d7/ad/c4d7ada844a0189bf0abc4be36c41992.jpg"
g9.save!
g10=Group.new(title:"Gamers Unite", description:"Video games are life.", location:"Berlin", link:"5G1Dk4bYRbrIHtiFwupg8z", capacity:186, category_id:c10.id, question:"Why would you like to join?")
g10.remote_photo_url = "https://s-media-cache-ak0.pinimg.com/564x/ac/8a/79/ac8a797020c39625060077e22944ef81.jpg"
g10.save!
g11=Group.new(title:"Bend the trend", description:"A bunch of fashionista's", location:"Paris", link:"Ak6a1ueynT27hb24Jper5c", capacity:85, category_id:c11.id, question:"Why would you like to join?")
g11.remote_photo_url = "https://img.businessoffashion.com/1024/573/magic/site/uploads/2016/05/Endless_closet_stitchup_extended_copy.jpg"
g11.save!
g12=Group.new(title:"Movie freaks", description:"We are a group of movie fans, who frequently watch movies together. We also review, discuss and suggest movies of all genres.", location:"Manchester", link:"Ak6a1yeynT27hbe9Jper5c", capacity:100, category_id:c12.id, question:"Why would you like to join?")
g12.remote_photo_url = "http://listsurge.com/wp-content/uploads/2015/08/t-hill-s-top-movies-of-2011-so-far-.jpg"
g12.save!
g13=Group.new(title:"Kiss My Ace", description:"We share a passion for tennis. Whether it's about the Grand Slams or our own game from last night, tennis is always the topic of discussion", location:"Amsterdam", link:"Ak6a1ueynT27h489Jper5c", capacity:38, category_id:c1.id, question:"Why would you like to join?")
g13.remote_photo_url = "http://tennisanywhere.net/sites/default/files/photo_shoots/M86073.jpg"
g13.save!
g14=Group.new(title:"Scrum Like it Hot", description:"From a Scrum to the Haka, rugby is life.", location:"Cardiff", link:"Ak6a1ueynT27hbe9Jperh2", capacity:15, category_id:c1.id, question:"Why would you like to join?")
g14.remote_photo_url = "http://www.mccullagh.org/db9/1ds-5/aspen-rugby-team-faceoff.jpg"
g14.save!
g15=Group.new(title:"Babysitters", description:"Expat babysitters community in Tokyo. This group consists of parents and babysitters in and around Tokyo. If you as parent ever need a trustworthy babysitter or you are looking for a nice kid to babysit, this is where you should be.", location:"Tokyo", link:"Ak6a1u3inT27hbe9Jper5c", capacity:27, category_id:c13.id, question:"Why would you like to join?")
g15.remote_photo_url = "http://www.5minutesformom.com/wp-content/uploads/2015/09/Babysitting-Courses-featured.jpg"
g15.save!
g16=Group.new(title:"Who let the dogs out?", description:"We love our dogs and go out together to the park to let the dogs play together", location:"Madrid", link:"Ak6a1ueynT27hb9kJper5c", capacity:65, category_id:c14.id, question:"Why would you like to join?")
g16.remote_photo_url = "http://theroosport.com/wp-content/uploads/2014/05/dog-walk.jpg"
g16.save!
g17=Group.new(title:"Global Nomads", description:"We love to travel and recommended new locations. Explore the world through this Whatsapp group or plan a trip with one of the other members", location:"Rome", link:"Ak6a1ueynTh1hbe9Jper5c", capacity:200, category_id:c15.id, question:"Why would you like to join?")
g17.remote_photo_url = "http://ww1.prweb.com/prfiles/2009/06/24/1116394/gnglogobxw.jpg"
g17.save!
g18=Group.new(title:"Perfect Portraits", description:"People's faces on canvas", location:"Paris", link:"Ak6a1ueynT27hbh5Jper5c", capacity:260, category_id:c16.id, question:"Why would you like to join?")
g18.remote_photo_url = "http://smart-defence.co.uk/wp-content/uploads/2015/03/art.jpg"
g18.save!
g19=Group.new(title:"Yoga & Zen", description:"Find your inner peace, rest your mind, body and soul", location:"Hanoi", link:"Ak6a1ueynT27hbj8Jper5c", capacity:50, category_id:c17.id, question:"Why would you like to join?")
g19.remote_photo_url = "http://caffeyoga.com/wp-content/uploads/2015/03/beach-yoga1.jpg"
g19.save!
g20=Group.new(title:"¡Hola!", description:"Speak spanish", location:"Berlin", link:"Ak6a1b4ynT27hbe9Jper5c", capacity:150, category_id:c18.id, question:"Why would you like to join?")
g20.remote_photo_url = "http://www.fuertelingua.com/wp-content/uploads/top-a-spanish-courses.jpg"
g20.save!
g21=Group.new(title:"Drones", description:"A mans new favourite toy. Are you interested in drones, own one or just like talking about them? Join this group! ", location:"Copenhagen", link:"Ak6a1j6ynT27hbe9Jper5c", capacity:35, category_id:c3.id, question:"Why would you like to join?")
g21.remote_photo_url = "http://www.slate.com/content/dam/slate/articles/technology/future_tense/2015/10/151021_FT_Drone.jpg.CROP.promo-xlarge2.jpg"
g21.save!
g22=Group.new(title:"LOL", description:"Group of legends talking about league of legends. We talk about and play challange eachother in the biggest game in current e-sports.", location:"Seoul", link:"Ak6k8ueynT27hbe9Jper5c", capacity:260, category_id:c10.id, question:"Why would you like to join?")
g22.remote_photo_url = "http://apptrigger.com/files/2016/09/LeagueOfLegends_Logo.jpg"
g22.save!
g23=Group.new(title:"Baller Ballerinas", description:"Dancing the night away in our tutu", location:"Geneve", link:"Ak6a1ueynT27hbl9Jper5c", capacity:58, category_id:c9.id, question:"Why would you like to join?")
g23.remote_photo_url = "http://www.womenshealthmag.com/sites/womenshealthmag.com/files/images/ballerina-project.jpg"
g23.save!
g24=Group.new(title:"Veggies on Fire", description:"GLuten free, meat free foodies community", location:"San Diego", link:"Ak6a1ueynT2k8be9Jper5c", capacity:240, category_id:c4.id, question:"Why would you like to join?")
g24.remote_photo_url = "http://www.17h43.com/wp-content/uploads/2016/09/vegan.jpg"
g24.save!
g25=Group.new(title:"Rubyists Unite ", description:"Do you even code?", location:"San Francisco", link:"Ak6a1ueynT27hbe9kner5c", capacity:175, category_id:c3.id, question:"Why would you like to join?")
g25.remote_photo_url = "https://s3.amazonaws.com/viking_education/web_development/prep_coding/ruby_small.jpg"
g25.save!
g26=Group.new(title:"Tarantino fanboys", description:"We love explosions, blood and over the top effects. Tarantino is the man!", location:"Los Angeles", link:"Ak6a1ueynT27h7h9Jper5c", capacity:240, category_id:c5.id, question:"Why would you like to join?")
g26.remote_photo_url = "https://consequenceofsound.files.wordpress.com/2015/12/tarantino-feature.png"
g26.save!
g27=Group.new(title:"COD Community", description:"It's our Call of Duty to play this game", location:"Chicago", link:"Ak6a1ueynTbahbe9Jper5c", capacity:237, category_id:c10.id, question:"Why would you like to join?")
g27.remote_photo_url = "https://assets.vg247.com/current//2016/09/Modern-Warfare.jpg"
g27.save!
g28=Group.new(title:"Backpackers in Thailand", description:"In this grop we discuss and advice eachother on the best locations to visit in our favourite backpacking country.. Thailand", location:"Bangkok", link:"Ak6a1uek8T27hbe9Jper5c", capacity:117, category_id:c15.id, question:"Why would you like to join?")
g28.remote_photo_url = "http://sugarloafbackpackers.com.www24.cpt4.host-h.net/wp-content/uploads/2013/10/Hiking-at-Coffee-Bay-Sugarloaf-Backpackers1.jpg"
g28.save!
g29=Group.new(title:"Android Anonymous", description:"We hate IPhones", location:"Yokohama", link:"Ak6a1ujsnT27hbe9Jper5c", capacity:210, category_id:c3.id, question:"Why would you like to join?")
g29.remote_photo_url = "http://cdn.bgr.com/2012/11/android-icon.jpg?quality=98&strip=all"
g29.save!
g30=Group.new(title:"Sculpture Culture", description:"artsyfarty sculptures", location:"Moscow", link:"Ak6a1ueynT27hbikJper5c", capacity:80, category_id:c16.id, question:"Why would you like to join?")
g30.remote_photo_url = "http://mikefieldsbronzes.com/wp-content/uploads/2013/10/xConvergence-Modern-Science-Contemporary-Sculpture.jpg.pagespeed.ic.65lul14PzM.jpg"
g30.save!

m1=Membership.create(user_id:u1.id, group_id:g1.id, status:"approved", admin: true, answer:"let me in plz")
m2=Membership.create(user_id:u2.id, group_id:g2.id, status:"approved", admin: true, answer:"let me in plz")
m3=Membership.create(user_id:u3.id, group_id:g3.id, status:"approved", admin: true, answer:"let me in plz")
m4=Membership.create(user_id:u4.id, group_id:g4.id, status:"approved", admin: true, answer:"let me in plz")
m5=Membership.create(user_id:u5.id, group_id:g5.id, status:"approved", admin: true, answer:"let me in plz")
m6=Membership.create(user_id:u6.id, group_id:g6.id, status:"approved", admin: true, answer:"let me in plz")
m7=Membership.create(user_id:u1.id, group_id:g7.id, status:"approved", admin: true, answer:"let me in plz")
m8=Membership.create(user_id:u2.id, group_id:g8.id, status:"approved", admin: true, answer:"let me in plz")
m9=Membership.create(user_id:u3.id, group_id:g9.id, status:"approved", admin: true, answer:"let me in plz")
m10=Membership.create(user_id:u4.id, group_id:g10.id, status:"approved", admin: true, answer:"let me in plz")
m11=Membership.create(user_id:u5.id, group_id:g11.id, status:"approved", admin: true, answer:"let me in plz")
m12=Membership.create(user_id:u6.id, group_id:g12.id, status:"approved", admin: true, answer:"let me in plz")
m13=Membership.create(user_id:u1.id, group_id:g13.id, status:"approved", admin: true, answer:"let me in plz")
m14=Membership.create(user_id:u2.id, group_id:g14.id, status:"approved", admin: true, answer:"let me in plz")
m15=Membership.create(user_id:u3.id, group_id:g15.id, status:"approved", admin: true, answer:"let me in plz")
m16=Membership.create(user_id:u4.id, group_id:g16.id, status:"approved", admin: true, answer:"let me in plz")
m17=Membership.create(user_id:u5.id, group_id:g17.id, status:"approved", admin: true, answer:"let me in plz")
m18=Membership.create(user_id:u6.id, group_id:g18.id, status:"approved", admin: true, answer:"let me in plz")
m19=Membership.create(user_id:u1.id, group_id:g19.id, status:"approved", admin: true, answer:"let me in plz")
m20=Membership.create(user_id:u2.id, group_id:g20.id, status:"approved", admin: true, answer:"let me in plz")
m21=Membership.create(user_id:u3.id, group_id:g21.id, status:"approved", admin: true, answer:"let me in plz")
m22=Membership.create(user_id:u4.id, group_id:g22.id, status:"approved", admin: true, answer:"let me in plz")
m23=Membership.create(user_id:u5.id, group_id:g23.id, status:"approved", admin: true, answer:"let me in plz")
m24=Membership.create(user_id:u6.id, group_id:g24.id, status:"approved", admin: true, answer:"let me in plz")
m25=Membership.create(user_id:u1.id, group_id:g25.id, status:"approved", admin: true, answer:"let me in plz")
m26=Membership.create(user_id:u2.id, group_id:g26.id, status:"approved", admin: true, answer:"let me in plz")
m27=Membership.create(user_id:u3.id, group_id:g27.id, status:"approved", admin: true, answer:"let me in plz")
m28=Membership.create(user_id:u4.id, group_id:g28.id, status:"approved", admin: true, answer:"let me in plz")
m29=Membership.create(user_id:u5.id, group_id:g29.id, status:"approved", admin: true, answer:"let me in plz")
m30=Membership.create(user_id:u6.id, group_id:g30.id, status:"approved", admin: true, answer:"let me in plz")

