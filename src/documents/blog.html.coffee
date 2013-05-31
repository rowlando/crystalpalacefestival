---
title: 'Crystal Palace Festival Blog'
layout: 'default'
url: '/blog'
urls: ['/blog/','/blog/index.html','/blog.html']
---
div '.row', ->
	div '.large-8.columns', ->
		div '.page-content.blog-list', property: 'sioc:content', ->
			# Related Posts
			recentPosts = []
			for document in @getCollection('posts').toJSON()
#				if document.url.indexOf('/blog') is 0 and document.url.indexOf('/blog/index') isnt 0
				recentPosts.push(document)
			if recentPosts.length
				text @partial 'content/document-list.html.coffee', {
				documents: recentPosts,
				showDescription: true,
				showReadMore: true
				}

	div '.large-4.columns', ->
		div '.page-sidebar', ->
			section '.related-documents', ->
				h3 '.h4', -> "Sites we like"
				blogsWeLike = [
					{url: 'http://www.crystalpalacefoodmarket.co.uk/', title: 'Crystal Palace Food Market' },
					{url: 'http://www.crystalpalacetransition.org.uk/', title: 'Crystal Palace Transition Town' },
					{url: 'http://drumzofthesouth.com/', title: 'Drumz of the South' },
					{url: 'http://thetrianglese19.blogspot.co.uk/', title: 'The Triangle SE19' },
					{url: 'http://www.unlc.org.uk/', title: 'Save Upper Norwood Library' }
				]
				text @partial 'content/document-list.html.coffee', {
				documents: blogsWeLike,
				}