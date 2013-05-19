# Document List
nav '.side-nav', 'typeof':'dc:collection', ->
	for document in @documents
		li '', 'typeof':'soic:post', about:document.url, ->
			a '.document-link', href:document.url, property:'dc:title', ->
				span '.document-title', -> document.title
			if document.date
				small '.document-date', property:'dc:date', ->
					document.date.toDateString()
			if @showDescription and document.description
				p '.document-description', property:'dc:description', ->
					document.description
			if @showReadMore
				a '.readmore', href:document.url, -> 'Read more' if document.layout is 'post'