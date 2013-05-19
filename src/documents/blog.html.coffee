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
				h2 -> "Blogs we like"
				blogsWeLike = [
					{url: 'http://blog.com', title: 'Crystal Palace Farmers Market' },
					{url: 'http://blog2.com', title: 'blog 2' }
				]
				text @partial 'content/document-list.html.coffee', {
				documents: blogsWeLike,
				}