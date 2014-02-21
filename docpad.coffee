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
			title: "Crystal Palace Festival 2014"
			author: "Nick Rowlands"
			email: "nick@rowlando.com"
			description: """
                   The free 4-day festival, now in it’s 8th year, will start with fringe events on Thursday 26 and Friday 27 around Crystal Palace, in anticipation of the main big festival weekend.
				"""
			keywords: """
				crystal palace festival, crystal palace overground festival, se19 festival, westow park, crystal palace music festival, crystal palace what's on, crystal palace summer, arts, crafts, music, kids entertainment, food
				"""

			text:
				copyright: '''
					<t render="html.md">
					Unless stated otherwise, all content is licensed under the [Creative Commons Attribution License](http://creativecommons.org/licenses/by/3.0/) and code licensed under the [MIT License](http://creativecommons.org/licenses/MIT/), © [Crystal Palace Festival](http://crystalpalacefestival.org)
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
        //ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js
				/vendor/foundation.js
				/vendor/foundation.topbar.js
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
					url: '/volunteer'
					label: 'Volunteer'
					title: 'Help make the festival more brilliant',
          url: '/get-involved'
          label: 'Get involved'
          title: 'Help make the festival more brilliant'
			]

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