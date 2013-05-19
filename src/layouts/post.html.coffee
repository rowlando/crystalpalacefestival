---
title: 'Blog'
layout: default
---

socialButtons = ->
	@getSocialButtons(['TwitterTweet','TwitterFollow', 'GooglePlusOne']) + '<div class="facebook-like-button social-button"><iframe src="//www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2FCrystalPalaceFestival&amp;send=false&amp;layout=button_count&amp;width=120&amp;show_faces=true&amp;font=verdana&amp;colorscheme=light&amp;action=like&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:120px; height:21px;" allowTransparency="true"></iframe></div>'

div '.row', ->
	# Content
	div '.large-8.columns', ->
		div '.page-content', property: 'sioc:content', ->
			small '.page-date', property:'dc:date', ->
				" #{@document.date.toDateString()}"
#			h1 '.page-title.h3', property:'dcterms:title', ->
#				span -> @document.title
			@content

		# Footer
		footer '.page-footer', ->
			# Subscribe Buttons
			section '.page-subscribe.social-buttons', ->
				socialButtons.call(@)

			# Disqus
			section '.page-comments', ->
				text @getDisqus()

	div '.large-4.columns', ->
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


