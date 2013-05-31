# =================================
# Misc Configuration

envConfig = process.env

# =================================
# DocPad Configuration

module.exports =
	regenerateEvery: 1000*60*60  # hour

	watchOptions:
		preferredMethods: [
			'watchFile',
			'watch'
		]

	# =================================
	# Template Data
	# These are variables that will be accessible via our templates
	# To access one of these within our templates, refer to the FAQ: https://github.com/bevry/docpad/wiki/FAQ

	templateData:
		# Site Data
		site:
			url: "http://crystalpalacefestival.org"
			title: "Crystal Palace Festival 2013"
			author: "Nick Rowlands"
			email: "nick@rowlando.com"
			description: """
									 The Crystal Palace festival has been running successfully for the last six years. In 2011, it expanded to Westow Park, with a live music stage, food and craft stalls, arts workshops, sports and kids’ activities, adding to the many events around the Triangle.
				"""
			keywords: """
				crystal palace festival, crystal palace overground festival, se19 festival, westow park, crystal palace music festival, crystal palace what's on, crystal palace summer, arts, crafts, music, kids entertainment, food
				"""

			text:
				copyright: '''
					<t render="html.md">
						Unless stated otherwise; all works are Copyright © 2011+ [Benjamin Lupton](http://balupton.com) and licensed [permissively](http://en.wikipedia.org/wiki/Permissive_free_software_licence) under the [MIT License](http://creativecommons.org/licenses/MIT/) for code and the [Creative Commons Attribution 3.0 Unported License](http://creativecommons.org/licenses/by/3.0/) for everything else (including content, media and design), enjoy!
					</t>
					'''

			services:
				facebookLikeButton:
					applicationId: '123975607775740'
				facebookFollowButton:
					applicationId: '123975607775740'
					username: 'CrystalPalaceFestival'
				twitterTweetButton: "se19festival"
				twitterFollowButton: "se19festival"
				disqus: 'crystalpalacefestival'
				googleAnalytics: 'UA-38376680-1'

			social:
				"""
				facebook
				linkedin
				twitter
				vimeo
				""".trim().split('\n')

			scripts: """
				/vendor/jquery-1.9.1.js
				/vendor/foundation.js
				/vendor/foundation.topbar.js
				/vendor/foundation.dropdown.js
				/vendor/foundation.orbit.js
				/scripts/script.js
				""".trim().split('\n')

			feeds: [
					href: 'http://feeds.feedburner.com/balupton.atom'
					title: 'Blog Posts'
				,
					href: 'http://vimeo.com/api/v2/balupton/videos.atom'
					title: 'Vimeo Videos'
				,
					href: 'http://api.flickr.com/services/feeds/photos_public.gne?id=35776898@N00&lang=en-us&format=atom'
					title: 'Flickr Photos'
				,
					href: 'https://api.twitter.com/1/statuses/user_timeline.atom?screen_name=se19festival&count=20&include_entities=true&include_rts=true'
					title: 'Tweets'
			]

			pages: [
					url: '/whats-on'
					label: "What's on"
					title: 'Return home'
					pages: [
							url: '/whats-on/thursday-27-june'
							label: 'Thursday 27'
						,
							url: '/whats-on/friday-28-june'
							label: 'Friday 28'
						,
							url: '/whats-on/saturday-29-june'
							label: 'Saturday 29'
						,
							url: '/whats-on/sunday-30-june'
							label: 'Sunday 30'
					]
					otherPages: [
							url: "/whats-on/venues-around-town"
							label: "Venues around town"
						,
							url: "/whats-on/art"
							label: "Art at the festival"
					]
				,
					url: '/info'
					label: 'Info'
					title: 'Need to know stuff'
					pages: [
							url: '/info/programme'
							label: 'Programme'
						,
							url: '/info/food-drink'
							label: 'Food & drink'
						,
							url: '/info/travel'
							label: 'Getting to the festival'
					]
				,
					url: '/volunteer'
					label: 'Volunteer'
					title: 'Help make the festival more brilliant'
				,
					url: '/blog'
					label: 'blog'
					title: 'View articles'
				,
					url: '/about'
					label: 'About'
					title: 'Find out more about the festival'
					pages: [
							url: "/about/contact"
							label: "Contact us"
						,
							url: "/about/press"
							label: "Press"
						,
							url: "/about/sponsors"
							label: "Our sponsors"
					]
			]

			highlights:
				westowpark: [
						heading: "Kids' zone"
						events: [
								title: "Sporty stuff"
								description: "Zumba and KickStars fun football, "
							,
								title: "Performance tent",
								description: "Drama workshop, Detect Egg, games, music and fun"
							,
								title: "Get arty"
								description: "Art4space, Blue Sparrow Fine Arts &amp; Artastic Art Club."
							,
								title: "Storytelling"
								description: "Alex Milway, All aboard the story train! Picklemouse Pumpkin."
						]
					,
						heading: "Music stage"
						events: [
							title: "Joel Bullen"
							description: "Sydenham based singer songwriter with a voice like pure gold"
						,
							title: "Breezy",
							description: "Be transported to another world by her velvety voice and soulful tones."
						,
							title: "Offbeats South"
							description: "Talented and exciting young band from London with a hybrid commercial sound."
						,
							title: "Metamono"
							description: "Metamono follow the dictates of their uncompromising manifesto."
						]
					,
						heading: "Performing arts"
						events: [
							title: "Cabinet of Curiosities"
							description: "Celebrates the inquiring mind of the Victorian and the golden age of the Crystal Palace."
						,
							title: "Puppetry",
							description: "Wooden Fingers puppetry workshop."
						,
							title: "The Peryls"
							description: "Strange and beautiful music from Crystal Palace’s presenters of the Extraordinarium"
						,
							title: "Panto"
							description: "Doctor Death – History of Medicine"
						]
				]
				bands:
					heading: "Line-up"
					events: [
							title: "Joel Bullen"
							description: "A Sydenham based singer songwriter with a voice like pure gold, performing indie/blues compositions of his own"
							time: "11:20"
							url: "https://www.facebook.com/pages/Joel-Bullen/"
							photoUrl: "/associated-files/bands/joelbullen.jpg"
						,
							title: "Floodliners"
							description: "A young female led indie band from south London. But don’t let the indie title fool you, their sound has so many different dimensions, including urban and hip-hop influences thrown into the mix, meaning the indie genre can barely contain them. Bordering on a genre all their own, the band best describe themselves and their music as “fuzzface, powerpunk, beatsynth and strafin’ rock”. All aged between 16 and 19 years old, they met at a song writing workshop at Goldsmiths College, New Cross. Floodliners are what the musical world need right now - a fresh, raw, immediate teenage band, creatively self-sufficient with a unique sound."
							time: "12:00"
							url: "https://www.facebook.com/FloodlinersMusic"
							photoUrl: "/associated-files/bands/floodliners.jpg"
						,
							title: "Civil Love"
							description: "They're a four piece band based in Peckham, drawing members from around the world they give a diverse and unique sound firmly rooted in sunshine and melody. Defined by humble yet powerful vocals and chiming guitars Civil Love offer a polished and harmonic live show with a wide eyed and welcoming feel through psychedelic pop and rock and roll."
							time: "12:40"
							url: "https://www.facebook.com/civiloveband"
							photoUrl: "/associated-files/bands/civillove.jpg"
						,
							title: "Offbeat South"
							description: "Offbeat South is a talented and exciting young band from London with a hybrid commercial sound. Their recent national success at Jamie Cullum's Big Audition with Pizza Express involved a huge support for the band’s future career from the likes of Clive Davis (The Times’ music critic), and Sir Michael Parkinson who expressed that the group, “defined the joy of music making”, Davis commented, “this is a band I couldn’t put in a box”. Offbeat South have released their hard-hitting single 'King' with a kaleidoscopic music video as a taster of their dynamic five track EP. They have collectively written and produced the entire EP, which also features BBC Introducing rapper Little Simz. King is available for free download from the band's website"
							time: "13:20"
							url: "http://offbeatsouth.com/"
							photoUrl: "/associated-files/bands/offbeatsouth.jpg"
						,
							title: "Breezy Lee"
							description: "Be transported to another world by the velvety voice and soulful tones of Breezy backed by trip hop beats and beautiful stringed instrumentation from some of the finest players south London has to offer"
							time: "14:10"
							url: "https://www.facebook.com/pages/Breezy-Lee/369527569742297"
							photoUrl: "/associated-files/bands/breezy-lee.jpg"
						,
							title: "The Hornets"
							description: "The Hornets collective are an 8-piece instrumental funk band who recreate the rarest and heaviest funk grooves from the seventies to present day. The brainchild of Russ Holdsworth and Titch Walker, the collective have an insatiable passion for funk and have been wowing their rapidly growing fanbase with sensationally upbeat performances since their incarnation in 2012. Already highly sought after by summer festivals and music venues this year, the Hornets are buzzing and ready for more!"
							time: "15:05"
							url: "http://www.thehornetsband.co.uk/"
							photoUrl: "/associated-files/bands/the-hornets.jpg"
						,
							title: "Hallouminati"
							description: "Over the last couple of years Hallouminati have been carefully blending their unique and high octane gypsy/punk/ska/Greek/ ragga/jazz mash-up and sweating it out for all to hear. Mixing the gritty realms of skankin’ ragga punk with traditional Greek rembetiko vibes, they’re throwin’ deranged beats for a unforgettable live show. Having played Bestival, Boomtown and all manner of shanty town festivals, right to busking the Olympics, Amsterdam and squats all over the Netherlands, Hallouminati have been fine tuning a sound adaptable to everything and anything; from the midnight guerilla dancefloors of gypsy nights up and down the country to the soundtrack of a champagne-doused ballroom soiree."
							time: "16:05"
							url: "http://www.hallouminati.com/"
							photoUrl: "/associated-files/bands/hallouminati.jpg"
						,
							title: "Metamono"
							description: "Formed by composer/producer Jono Podmore, electronic musician Paul Conboy and fine artist Mark Hill, Metamono follow the dictates of their uncompromising manifesto – barring themselves from using digital sound generation and processing, rejecting overdubs and microphones, and informing their unique approach to music making."
							time: "17:05"
							url: "http://www.metamono.co.uk/"
							photoUrl: "/associated-files/bands/metamono.jpg"
						]
				venues:
					wednesday:
						heading: "Wednesday"
						events: [
							title: "Pre-festival warm up gig, Fascinating Rhythm"
							description: "Swing and big band music with new arrangements of classics by legends such as Duke Ellington, Herbie Hancock, Burt Bacharach, Jimmy Forrest, and more, along with original compositions by musical director Keith Abbs. Featuring a swing and electro-swing DJ set by DJ Mighty Craic"
							time: "19:30"
							location: "Gipsy Hill Tavern"
							url: "https://www.facebook.com/events/367866663334137/"
						]
					thursday:
						heading: "Thursday"
						events: [
							title: "Longfellow and Co",
							description: "Longfellow have drawn comparisons in the press to artists such as Fleet Foxes, Bon Iver, Coldplay and Elbow, and have rapidly built a fan base from their success performing at the Olympics and with Universal Music's Emerging Icons programme."
							location: "The White Hart"
							time: "19:00"
							url: "http://www.thewhitehartse19.co.uk/"
						,
							title: "Traditional Irish folk"
							description: "Celtic Crunch and SICAD folk jam session plus DJ Mighty Craic"
							location: "Gipsy Hill Tavern"
							time: "19:30"
							url: "https://www.facebook.com/events/110739549131028/"
						,
							title: "Six course food and beer matching night"
							description: "Six course food and beer matching night with guest speaker Rod Jones from Meantime Brewing Company. You will get to try some of the best beers from all over the world, matched with some mouth-watering food, and get to listen to one of the most knowledgeable men in London explain the pairings. Rod was Meantime’s Head Brewer for a number of years, before recently taking a step back and spending more time on training and spreading his knowledge with others in the monthly beer and food nights at the Meantime Old Brewery. Tickets £50 each, including food and drink"
							location: "Westow House"
							time: "19:30"
							url: "http://www.westowhouse.com/cpfestival/"
						,
							title: "Comedy at the Café"
							description: "Line-up includes Tom Allen, star of Radio 4’s Bleak Expectations and Angela Barnes, BBC New Act Winner and Sam Fletcher, Edinburgh Comedy Best Newcomer nominee – all accompanied by tea, coffee, cake, tasty snacks and BYOB! Tickets £5, available in advance from the café."
							location: "Brown & Green, Crystal Palace station"
							time: "19:30"
							url: "http://www.brownandgreencafe.com/"
						,
							title: "Salsa"
							description: "DJ and dancing continue after the class"
							location: "Twenty-Five"
							time: "20:00"
							url: "http://www.bartwenty-five.co.uk/"
						]
					friday:
						heading: "friday"
					saturday:
						heading: "Saturday"
						events: [
							title: "DJ with funky, soul, indie and party tunes"
							description: "The pub opens for breakfast at 11am followed by a BBQ and craft fair from noon. The evening brings some extra special entertainment with the fabulous Thrill Billies burlesque group at 8pm rounded off with an extra long performance from the especially awesome The Hipster Ray - a rabble rousing ska punk band from 9:30pm Along with our usual menu, massive draught range and huge CIDER FEST, where else would you possibly want to be?"
							location: "The White Hart"
							time: "11:00"
						,
							title: "Cocktails and more at the Sparrowhawk"
							description: "Pop in for a post festival summer cocktail or grab one of our legendary homemade burgers on your way down to the park, served all day from our garden BBQ!"
							time: "12:00"
							location: "The Sparrowhawk"
							url: "http://thesparrowhawkpub.co.uk/"
						,
							title: "Big live music day"
							description: "The famous hog roast in the garden as well as an outdoor cider bar. Live music line-up features: 17:45 Rhys Lewis and the Relics 18:45 Casper and the Howling 19:45 Emile Gerber and the Stone Faced Travellers Followed by DJ Christos on the decks to keep the party going til 3am."
							location: "Westow House"
							time: "17:00"
							url: "http://www.westowhouse.com/cpfestival/"
						,
							title: "The Reminisce Reggae Band and 70s fancy dress disco"
							description: "Saturday Night Fever with great BBQ food in the beer garden, live reggae, ska and lovers rock from one of London’s top reggae bands followed by a 70s fancy dress disco."
							location: "Gipsy Hill Tavern"
							time: "18:00"
							url: "https://www.facebook.com/events/622530291108270/"
						,
							title: "Live music at The Grape & Grain"
							description: "Longfellow plays a mix of covers and original songs followed by Red Rooster at 9pm featuring Al Hunter, a five piece swing band playing hot jazz."
							location: "The Grape & Grain"
							time: "18:30"
							url: "http://thegrapeandgrainse19.co.uk/"
						,
							title: "RPM Club Mind the Gap special"
							description: "The infamous speaker blowing open-decks night – turn up, chalk your name on the board and spin up to 3 records. All genres welcome. Strictly 100% vinyl. Limited capacity, arrive early to avoid disappointment."
							location: "Antenna Café Thing"
							time: "18:30"
							url: "https://www.facebook.com/events/339586789497641/"
						,
							title: "DJ club classics"
							description: "DJ playing house, commercial and club classics till 2am"
							location: "Twenty-Five"
							time: "21:00"
							url: "http://www.bartwenty-five.co.uk/"
						]
					sunday:
						heading: "Sunday"
						events: [
							title: "BBQ and live music"
							description: "Live music from Dulwich Ukulele band plus guests til late"
							time: "12:00"
							location: "The Alma"
							url: "http://www.thealmapub.com/home.html"
						,
							title: "Session in the recession"
							description: "Longfellow and other bands – all day in the front garden"
							time: "12:00"
							location: "The White Hart"
							url: "http://www.thewhitehartse19.co.uk/"
						,
							title: "Café Sessions Alight Here special"
							description: "Stay floating on the festival vibes with a BBQ and luminous live music from Breezy Lee & The Spaceshipman, The Lovebirds, The No Frills Band, Franck Alba, Dani Cali, Nina Walsh and more TBA. Limited capacity, arrive early to avoid disappointment."
							time: "12:00"
							location: "Antenna Café Thing"
							url: "https://www.facebook.com/events/373180479466748/"
						,
							title: "BBQ in the garden"
							description: ""
							location: "Twenty-Five"
							time: "12:00"
							url: "http://www.bartwenty-five.co.uk/"
						,
							title: "Triangle day"
							description: "The garden fun continues to help celebrate the first ever Triangle Day with yet another hog roast, BBQ and outdoor cider bar with buskers and entertainers to captivate."
							time: "12:00"
							location: "Westow House"
							url: "http://www.westowhouse.com/cpfestival/"
						,
							title: "Live music at The Grape & Grain"
							description: "The fantastic Parry Ray & John Crawford, playing the coolest, laid back lounge jazz followed by The Sax Pastilles at 5pm, a six piece version of our now legendary house band, putting the swing into swing/jazz."
							time: "14:00"
							location: "The Grape & Grain"
							url: "http://thegrapeandgrainse19.co.uk/"
						,
							title: "Live music at The Royal Albert"
							description: ""
							time: "14:00"
							location: "The Royal Albert"
							url: "https://www.facebook.com/theroyalalbertpub"
						,
							title: "DJ sessions"
							description: "Smooth out those festival rough edges downstairs at The Exhibition Rooms with cocktails and a selection of eclectic beats from local DJ The Wilkybar Kid, ranging from chilled electronic, ska and soul, to disco and downtempo house, followed by your favourite resident DJs playing rare vinyl, Brazilian specialities and his own compositions from 7pm onwards."
							time: "15:00"
							location: "The Exhibition Rooms"
							url: "https://www.facebook.com/pages/The-Exhibition-Rooms/115167471066"
						,
							title: "Beer garden BBQ, jazz, cajun and blues"
							description: "Dakota Jim and his family band plus DJ"
							time: "18:00"
							location: "Gipsy Hill Tavern"
							url: "https://www.facebook.com/events/152493464930545/"
						,
							title: "The Cracked"
							description: "A seven piece Afrobeat, calypso, Latin inspired band. Tickets £3 on the door"
							time: "22:00"
							location: "Domali"
							url: "https://www.facebook.com/domalicafe"
						]
				kidszone:
					sporty:
						heading: "Sporty area"
						events: [
							title: "Hulahooping"
							description: "Hulahooping with Polina Katkova, ages 4 and above"
							time: "11:00"
							url: "http://www.yellokat.com/"
						,
							title: "KickStars Football"
							description: "KickStars fun football skills and space hopping from 2-11 years"
							time: "13:00"
							url: "http://www.kickstars.co.uk/"
						,
							title: "Zumba for 4-7 years"
							description: "Packed with specially choreographed routines and the latest music - like hip-hop and reggaeton - Zumbatomic classes increase focus and self-confidence, boost metabolism and improve co-ordination"
							time: "16:15"
							url: "http://www.thedancerooms.co.uk/"
						,
							title: "Zumba for 7-11 years"
							description: "Packed with specially choreographed routines and the latest music - like hip-hop and reggaeton - Zumbatomic classes increase focus and self-confidence, boost metabolism and improve co-ordination"
							time: "17:00"
							url: "http://www.thedancerooms.co.uk/"
						]
					activities:
						heading: "Activities tent"
						events: [
							title: "Art4Space"
							description: "Two hour drop-in session with award-winning local community arts group to create your own mosaic to take home"
							time: "11:00"
							url: "http://www.art4space.co.uk/"
						,
							title: "Blue Sparrow Fine Arts"
							description: "Create your own Van Gogh masterpieces in oil pastels, crayons, watercolour tins and colouring pencils to take home"
							time: "13:00"
							url: "http://www.bluesparrowsartclub.co.uk/"
						,
							title: "Artastic Art Club"
							description: "Come along and join the festive crowns and flags art activity – creating festive crowns and flags with poster paint, tissue paper, gems, buttons and much more up to 6pm!"
							time: "16:00"
							url: "http://www.club-tastic.co.uk/"

						]
					performance:
						heading: "Performance tent"
						events: [
							title: "Rockmount Primary School Choir "
							time: "11:00"
						,
							title: "Brooke Laing, Little Supernovas"
							description: "Creative drama workshop suitable for all ages. Let your child’s imagination explode with an action adventure! They’ll travel to mystical lands, boogie with baboons, trick dragons, tickle an octopus or even blast off into space"
							time: "11:30"
							url: "http://www.littlesupernovas.com/"
						,
							title: "Gems Performing Arts"
							description: "Come and join the team for a free drama and dance lesson"
							time: "12:15"
							url: "http://www.gemsperformingarts.com/"
						,
							title: "Ellie Lawrie and Alice Sarsha"
							description: "Local teenagers, aged 13, sing to raise funds for their Scout group, Goldfinch Pack"
							time: "13:30"
						,
							title: "Simply Smiley Productions presents Detect Egg"
							description: "Sponsored by Sell It Mama and Crystal Palace Sports Injury Clinic, the magic of theatre comes to the children of Crystal Palace with a fun filled show that will entertain and turn your kids into detectives, whilst they also learn about the English farm. Hattie Hen's eggs have gone missing and Herlock Bones is called to solve the mystery. Follow the chase across Biddlesdown Farm with Hunny Bunny and Rodney Rooster as they try to uncover the case."
							time: "14:00"
							url: "http://www.littlesupernovas.com/"
						,
							title: "Jelly Bean Jake's Kids Club"
							description: "Where kids create drama, games, music and fun! Jelly Bean Jake has lost his energy and muscle power. In this lively fun filled session he is hoping the children of Crystal Palace will help him get it back, so he can be fit and healthy again. Suitable for 5-9 years with Caroline Sargeant. Contact: 07956 305178"
							time: "15:30"
						,
							title: "Tunnels original soundtrack composed for the film"
							description: "Performed by Crystal Palace Young Filmmakers"
							time: "16:45"
						,
							title: "Kids’ disco"
							description: "With local father and son DJ team, The Wilky Bar Kid and Finlay (aged 6)"
							time: "17:15"
						]
					storytelling:
						heading: "Storytelling tent - sponsored by The Bookseller Crow"
						events: [
							title: "Alex Milway, author of The Mousehunter and the Mythical 9th Division series"
							description: "Alex brings creative storytelling event to the tent where children can draw creatures and make up monsters"
							time: "11:30"
							url: "http://www.alexmilway.com/"
						,
							title: "All aboard the story train!"
							description: "Fiona Byers from Upper Norwood Library entertains with stories based on the themes of dinosaurs and trains. Suitable for ages 4-10 years with their parents. Audience participation permissable!"
							time: "12:30"
							url: "http://uppernorwoodlibrary.org/"
						,
							title: "Adventure storytelling trail from Little Supernovas"
							description: "Meet outside the tent to follow the ribbon trail and meet different characters along the way! Parents to accompany their children."
							time: "13:00"
							url: "http://www.gemsperformingarts.com/"
						,
							title: "Marion and Tim Sharville present Picklemouse Pumpkin"
							description: "An illustrated rhyming story from local residents aimed at younger children, celebrating friendship, working together, and sharing different cultures. Get illustrating with Tim too by drawing some mice – nice! Suitable for ages 3-7 years"
							time: "13:15"
							url: "http://www.timsharville.co.uk/"
						,
							title: "All aboard the story train!"
							description: "(repeat session) Fiona Byers from Upper Norwood Library entertains with stories based on the themes of dinosaurs and trains. Suitable for ages 4-10 years with their parents. Audience participation permissable!"
							time: "14:00"
							url: "http://uppernorwoodlibrary.org/"
						,
							title: "Gary Northfield, Phoenix, Beano and Teenytinysaurs cartoonist"
							description: "Learn how to draw mad and crazy dinosaurs with local author. Age 6 years upwards."
							time: "15:00"
							url: "http://www.garynorthfield.com/"
						,
							title: "Marion and Tim Sharville present Picklemouse Pumpkin"
							description: "(repeat session) An illustrated rhyming story from local residents aimed at younger children, celebrating friendship, working together, and sharing different cultures. Get illustrating with Tim too by drawing some mice – nice! Suitable for ages 3-7 years"
							time: "16:00"
							url: "http://www.littlesupernovas.com/"
						,
							title: "Reading chill out time"
							time: "16:45"
						]
				soundtracks: [
						heading: "Morning"
						events: [
							title: "Matthew McCarthy – clarinet quartet"
							description: "S.P.A.M. music from the past 500 years, written or arranged for four clarinets"
							time: "10:15"
						,
							title: "Keziah Thomas – harp",
							description: "Award-winning local harpist presents music first performed at the Crystal Palace by John Thomas and Arthur Sullivan"
							time: "11:00"
						,
							title: "Tim Bridgen – vibraphone"
							description: "Percussionist Tim will transport listeners to the vibe of a late night jazz club, playing an eclectic mix of music from J.S Bach to Joe Locke"
							time: "11:30"
						]
					,
						heading: "Afternoon"
						events: [
							title: "Elizabeth Hungerford – soprano"
							description: "Early music specialist performs works by Handel, Purcell and more"
							time: "12:15"
						,
							title: "Abigail Sudbury – soprano",
							description: "Continuing the theme of music at the Crystal Palace, songs by Arthur Sullivan, Ivor Novello and August Manns accompanied by the harp"
							time: "13:00"
						,
							title: "Ensemble Tramontana"
							description: "Music that crosses medieval and Renaissance Europe, stirring the emotions, focusing on themes of travel, madness, and love"
							time: "13:45"
						,
							title: "Kate Proudlove – soprano and piano"
							description: "Songs capturing the spirit of England accompanied by Charlotte Way on the piano"
							time: "14:30"
						,
							title: "Brother G and The Trouble"
							description: "Experimental music and sound with spoken word using piano, reel to reel tape machines, accordion, clarinet, percussion and the voice."
							time: "14:30"
						]
				]
				,
				thursday:
					daytime:
						heading: "In the daytime"
						events: [
								title: "Special festival Waggle and Hum"
								description: "Fiona Byers, children's librarian, holds her much loved class for 0-2 year olds, including songs and rhymes with puppets, with a special celebratory Victorian theme. Donations for the library welcome"
								location: "Upper Norwood Library"
								time: "9:30 and 11:00"
							,
								title: "Bookbug Club",
								description: "Fiona Byers, children's librarian, holds a story-telling session, including songs and rhymes with puppets, a story and dancing with a train theme. Suitable for ages 18 months – 4 yrs. Donations for the library welcome."
								location: "Upper Norwood Library"
								time: "14:15"
							,
								title: "Bonanza childrens’ sports evening with CPFC"
								description: "Coaching for budding footballers with Crystal Palace FC, races and other events. Football coaching will be in age groups of under 8/10/12/16 and races will be under 6/8/10. Prizes for winners."
								location: "Westow Park"
								time: "17:00"
						]
					evening:
						heading: "In the evening"
						events: [
								title: "Table tennis competition"
								description: "Masters (over 55), veterans (over 40) – trophies awarded for top three in each event. <a href='/documents/crystal-palace-overground-festival-table-tennis-application-form-2013.pdf'>Download an application form and instructions on how to enter</a>."
								location: "Methodist Church Lower Hall"
								time: "19:00"
								url: "/documents/crystal-palace-overground-festival-table-tennis-application-form-2013.pdf"
							,
								title: "Longfellow and Co",
								description: "Longfellow have drawn comparisons in the press to artists such as Fleet Foxes, Bon Iver, Coldplay and Elbow, and have rapidly built a fan base from their success performing at the Olympics and with Universal Music's Emerging Icons programme."
								location: "The White Hart"
								time: "19:00"
								url: "http://www.thewhitehartse19.co.uk/"
							,
								title: "Traditional Irish folk"
								description: "Celtic Crunch and SICAD folk jam session plus DJ Mighty Craic"
								location: "Gipsy Hill Tavern"
								time: "19:30"
								url: "https://www.facebook.com/events/110739549131028/"
							,
								title: "Six course food and beer matching night"
								description: "Six course food and beer matching night with guest speaker Rod Jones from Meantime Brewing Company. You will get to try some of the best beers from all over the world matched with some mouth-watering food and get to listen to one of the most knowledgeable men in London explain the pairings. Rod was Meantime’s Head Brewer for a number of years before recently taking a step back and spending more time on training and spreading his knowledge with others in the monthly beer and food nights at the Meantime Old Brewery. Tickets £50 each, including food and drink"
								location: "Westow House"
								time: "19:30"
								url: "http://www.westowhouse.com/cpfestival/"
							,
								title: "Comedy at the Café"
								description: "Line-up includes Tom Allen, star of Radio 4’s Bleak Expectations and Angela Barnes, BBC New Act Winner – all accompanied by tea, coffee, cake, tasty snacks and BYOB! Tickets £5, available in advance from the café."
								location: "Brown & Green, Crystal Palace station"
								time: "19:30"
								url: "http://www.brownandgreencafe.com/"
						]
				friday:
					daytime:
						heading: "In the daytime"
						events: [
							title: "Remembering the Crystal Palace"
							description: "Fiona Byers from Upper Norwood Library hosts a reminiscence session based on the legacy of the Crystal Palace. Bring your family photographs and souvenirs of the Palace and the park to trigger memories and swap stories."
							location: "Upper Norwood Methodist Church"
							time: "10:30"
							url: "http://uppernorwoodlibrary.org/"
						,
							title: "Bingo for everyone",
							description: "Prize bingo with refreshments, £2 on the door."
							location: "Living Water Satisfies"
							time: "14:00"
							url: "http://www.livingwatersatisfies.org.uk/cafe"
						,
							title: "Tea dance"
							description: "Lose yourself for the afternoon with music spun on an original gramophone, also with pianist Alison Chai. It's free and subsidised refreshments available. "
							location: "Upper Norwood Methodist Church Hall"
							time: "17:30"
						]
					evening:
						heading: "In the evening"
						events: [
							title: "DJ retro night"
							description: "With some of the best classic songs of all time."
							location: "The White Hart"
							time: "19:00"
							url: "http://www.thewhitehartse19.co.uk/"
						,
							title: "The Overground Special Festival Spoken Word",
							description: "The very popular Spoken Word Nights in Antenna take it up a few notches for the festival with an absolutely electric line-up of performers featuring El Crisis+ David J Pugilist+Tamsin Kendrick+ Jazzman John Clarke+K L Gillespie +Zuli Stenson+Open Mic. Hosted by Joe Duggan. Free admission."
							location: "Antenna Studios"
							time: "19:30"
							url: "https://www.facebook.com/events/162160223950808/"
						,
							title: "Guinness and Oyster Festival"
							description: "Fresh Irish oysters served up by the Oyster Meister, featuring live music from Irish folk rockers The Reels plus DJ Mighty Craic."
							location: "Gipsy Hill Tavern"
							time: "19:30"
							url: "https://www.facebook.com/events/577861115590243/"
						,
							title: "1950s rock’n’roll extravaganza"
							description: "Friday night Westow House will be transformed into a 1950s rock ‘n’ roll bar - live performances from the Boom Boom Booms, genuine 1950s jukebox, swing/jive dance lessons & and much more!"
							location: "Westow House"
							time: "20:00"
							url: "http://www.westowhouse.com/cpfestival/"
						,
							title: "The Electric Palace open air cinema"
							description: "A rare showing of The <em>Pleasure Garden</em> (1953), a BBC short film, on its 60th anniversary. This special event will be followed by BAFTA-winning short, <em>A Morning Stroll</em>, from local film-maker Grant Orchard and then the main feature <em>Little Miss Sunshine</em>. With bar and music – tickets £7.50 – click below to pay via PayPal (includes free drink on arrival)<br/> <form action='https://www.paypal.com/cgi-bin/webscr' method='post' target='_top'><input type='hidden' name='cmd' value='_s-xclick'> <input type='hidden' name='hosted_button_id' value='93QRNAGSB6WK4'> <input type='image' src='https://www.paypalobjects.com/en_US/GB/i/btn/btn_buynowCC_LG.gif' border='0' name='submit' alt='PayPal – The safer, easier way to pay online.'> <img alt='' border='0' src='https://www.paypalobjects.com/en_GB/i/scr/pixel.gif' width='1' height='1'></form>	"
							location: "Coopers Yard"
							time: "20:30"
						,
							title: "DJ club classics"
							description: "DJ playing commercial and club classics till 2am"
							location: "Twenty-Five"
							time: "21:00"
							url: "http://www.bartwenty-five.co.uk/"
						]


			links:
				docpad:
					text: 'DocPad'
					url: 'http://docpad.org'
					title: 'Visit Website'
				hostel:
					text: 'Startup Hostel'
					url: 'http://startuphostel.org'
					title: 'Visit Website'
				backbonejs:
					text: 'Backbone.js'
					url: 'http://backbonejs.org'
					title: 'Visit Website'
				historyjs:
					text: 'History.js'
					url: 'http://historyjs.net'
					title: 'Visit Website'
				bevry:
					text: 'Bevry'
					url: 'http://bevry.me'
					title: 'Visit Website'
				services:
					text: 'Services'
					url: 'http://bevry.me/services'
					title: "View my company's services"
				opensource:
					text: 'Open-Source'
					url: 'http://en.wikipedia.org/wiki/Open-source_software'
					title: 'Visit on Wikipedia'
				html5:
					text: 'HTML5'
					url: 'http://en.wikipedia.org/wiki/HTML5'
					title: 'Visit on Wikipedia'
				javascript:
					text: 'JavaScript'
					url: 'http://en.wikipedia.org/wiki/JavaScript'
					title: 'Visit on Wikipedia'
				nodejs:
					text: 'Node.js'
					url: 'http://nodejs.org/'
					title: 'Visit Website'
				balupton:
					text: 'Benjamin Lupton'
					url: 'http://balupton.com'
					title: 'Visit Website'
				author:
					text: 'Benjamin Lupton'
					url: 'http://balupton.com'
					title: 'Visit Website'
				source:
					text: 'open-source'
					url: 'https://github.com/balupton/balupton.docpad'
					title: 'View Website Source'
				contact:
					text: 'Contact'
					url: 'mailto:b@bevry.me'
					title: 'Contact me'
					cssClass: 'contact-button'

		# Link Helper
		getPreparedLink: (name) ->
			link = @site.links[name]
			renderedLink = """
				<a href="#{link.url}" title="#{link.title}" class="#{link.cssClass or ''}">#{link.text}</a>
				"""
			return renderedLink

		# Meta Helpers
		getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
		getPreparedAuthor: -> @document.author or @site.author
		getPreparedEmail: -> @document.email or @site.email
		getPreparedDescription: -> @document.description or @site.description
		getPreparedKeywords: -> @site.keywords.concat(@document.keywords or []).join(', ')

	# =================================
	# Collections

	collections:
		pages: ->
			@getCollection('documents').findAllLive({pageOrder:$exists:true},[pageOrder:1])

		posts: ->
			@getCollection('documents').findAllLive({relativeOutDirPath:'blog'},[date:-1])

		whatson: ->
			@getCollection('documents').findAllLive({isDay:true},[order:1])


	# =================================
	# Events

	events:

		serverExtend: (opts) ->
			# Prepare
			docpadServer = opts.server

			# ---------------------------------
			# Server Configuration

			# Redirect Middleware
			docpadServer.use (req,res,next) ->
				if req.headers.host in ['www.balupton.com','lupton.cc','www.lupton.cc','balupton.no.de','balupton.herokuapp.com']
					res.redirect 301, 'http://balupton.com'+req.url
				else
					next()

	# =================================
	# Plugin Configuration

	plugins:
		feedr:
			feeds:
				'twitter':
					url: "https://api.twitter.com/1/statuses/user_timeline.json?screen_name=se19festival&count=20&include_entities=true&include_rts=true"
				#'flickr':
				#	url: "http://api.flickr.com/services/feeds/photos_public.gne?id=35776898@N00&lang=en-us&format=json"

	environments:
		development:
			templateData:
				site:
					services:
						reddit: false
						googleAnalytics: false