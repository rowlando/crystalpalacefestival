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
					applicationId: '266367676718271'
				facebookFollowButton:
					applicationId: '266367676718271'
					username: 'balupton'
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
				,
					url: '/about'
					label: 'About'
					title: 'Find out more about the festival'
				,
					url: '/get-involved'
					label: 'Get Involved'
					title: 'Help make the festival more brilliant'
				,
					url: '/blog'
					label: 'blog'
					title: 'View articles'
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