---
title: 'Blog'
layout: default
---
div '.row', ->
	# Content
	div '.large-9.columns', ->
		div '.page-content', property: 'sioc:content', ->
			small '.page-date', property:'dc:date', ->
				" #{@document.date.toDateString()}"
#			h1 '.page-title.h3', property:'dcterms:title', ->
#				span -> @document.title
			@content

		# Footer
		footer '.page-footer', ->
			# Subscribe Buttons
			section '.page-subscribe.social-buttons', -> @getSocialButtons(['FacebookLike','FacebookFollow', 'TwitterTweet','TwitterFollow', 'GooglePlusOne'])

			# Disqus
			section '.page-comments', ->
				text @getDisqus()

	div '.large-3.columns', ->
		div '.page-sidebar', ->
			# Related Posts
			recentPosts = []
			for document in @getCollection('posts').toJSON()
#				if document.url.indexOf('/blog') is 0 and document.url.indexOf('/blog/index') isnt 0
				recentPosts.push(document)
			if recentPosts.length
				section '.related-documents', ->
					h2 -> 'Recent Posts'
					text @partial 'content/document-list.html.coffee', {
					documents: recentPosts,
					showDescription: false,
					showReadmore: false
					}


