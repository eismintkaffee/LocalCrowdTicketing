# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: 'name@name.com', password: 'password1', password_confirmation: 'password1', )

music = Category.create(name: 'Music', thumburl:'http://www.hardcoregamer.com/wp-content/uploads/2014/04/rockband.jpg')

art = Category.create(name: 'Art', thumburl: 'https://asunews.asu.edu/files/imagecache/story_main_image/mesa_arts_center_festival_of_creativity.jpg')

festival = Category.create(name: 'Festival', thumburl: 'http://hackalife.com/wp-content/uploads/2009/09/carnival.jpg')

marathon = Category.create(name: 'Marathon', thumburl: 'http://www.crickladefunrun.co.uk/images/Cricklade%20Half%20Marathon%20Start%202.JPG')

kids = Category.create(name: 'For Kids', thumburl: 'http://www.offroaders.com/album/Tellico/dixie-06-images/Patrick-Kid-Events-3-sac.jpg')


Event.create(event_name: 'Astro Tokyo', description: "Local Aspiring Band", Price: 15.00, thumburl: 'http://i.ytimg.com/vi/0VFgS4Lp0Ts/mqdefault.jpg', category_id: music.id)

Event.create(event_name: 'PTV', description: "Post hardcore band from San Deigo", Price: 35.00, thumburl: 'http://modern-vinyl.com/wp/wp-content/uploads/2012/06/pierce-the-veil-600x390.jpg', category_id: music.id)

Event.create(event_name: 'INSECTOGRAPHIA: DRAWING IN ENAMEL', description: "Local Aspiring Band", Price: 15.00, thumburl: 'http://events-media.nationalgeographic.com/media/images/photos/MAC1-dl_jpg_610x343_crop_upscale_q85__jpg_610x343_crop_upscale_q85.jpg', category_id: art.id)

Event.create(event_name: 'The Nutcracker Festival', description: "Enjoy a family-friendly day full of unforgettable holiday festivities with Ballet Arizona!", Price: 60.00, thumburl: 'http://i.gse.io/gse_media/114/9/1414452557-ballet-arizona-the-nutcracker-tickets.jpg?p=1', category_id: festival.id)

Pticket.create(eventName: 'Astro Tokyo' , quantity: 2)

