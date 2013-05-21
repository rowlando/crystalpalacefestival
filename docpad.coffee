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
							url: "/whats-on/art"
							label: "Art at the festival"
					]
				,
					url: '/info'
					label: 'Info'
					title: 'Need to know stuff'
					pages: [
							url: '/info/travel'
							label: 'Getting to the festival'
						,
							url: '/info/safety'
							label: 'Safety'
						,
							url: '/info/food-drink'
							label: 'Food & drink'
					]
				,
					url: '/get-involved'
					label: 'Get Involved'
					title: 'Help make the festival more brilliant'
					pages: [
							url: '/get-involved/bloggers-wanted'
							label: 'Bloggers wanted'
						,
							url: '/get-involved/photographers'
							label: 'Photographers'
						,
							url: '/get-involved/stall-holders'
							label: 'Stall holders'
					]
				,
					url: '/blog'
					label: 'blog'
					title: 'View articles'
				,
					url: '/about'
					label: 'About'
					title: 'Find out more about the festival'
			]

			highlights:
				westowpark: [
						heading: "Kids' zone"
						events: [
								title: "Sporty stuff"
								description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
							,
								title: "Performance tent",
								description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
							,
								title: "Get arty"
								description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
							,
								title: "Storytelling"
								description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						]
					,
						heading: "Music stage"
						events: [
							title: "Joel Bullen"
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						,
							title: "Breezy",
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						,
							title: "All Beats South"
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						,
							title: "Metamono"
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						]
					,
						heading: "Performing arts"
						events: [
							title: "Cabinet of Curiosities"
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						,
							title: "Puppetry",
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						,
							title: "The Peryls"
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						,
							title: "Panto"
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						]
				]
				triangle: [
						heading: "Blah"
						events: [
							title: "Sporty stuff"
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						,
							title: "Performance tent",
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						,
							title: "Get arty"
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						,
							title: "Storytelling"
							description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
						]
					]
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
							description: "Lose yourself for the afternoon with music spun on an original 1950s gramophone, also with pianist, refreshments available. Tickets £X on the door."
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
							description: "Friday night we will be transforming Westow into a 1950s Rock n Roll bar - Live Performances from Boom Boom Booms, Genuine 1950s jukebox, Swing/jive dance lessons &amp; and much more!"
							location: "Westow House"
							time: "20:00"
							url: "http://www.westowhouse.com/cpfestival/"
						,
							title: "The Electric Palace open air cinema"
							description: "A rare showing of The Pleasure Garden (1953), a BBC short film, on its 60th anniversary. This special event will be followed by the main feature Little Miss Sunshine. With bar and music – tickets £7.50 – click here to pay via PayPal (includes free drink on arrival)."
							location: "Coopers Yard"
							time: "20:30"
							url: "https://www.facebook.com/events/110739549131028/"
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