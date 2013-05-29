div '.event-container', ->
	ul ->
		for eventItem in @events
			li '.event', ->
				h4 '.event-title', ->
					eventItem.title
				if eventItem.time and eventItem.location
					if eventItem.url
						a '.event-time', href:eventItem.url, -> eventItem.time + " @ " + eventItem.location
					else
						span '.event-time', -> eventItem.time + " @ " + eventItem.location
				if eventItem.time and !eventItem.location
					span '.event-time', -> eventItem.time
				if eventItem.photoUrl
					img '.event-img', src:eventItem.photoUrl, alt: eventItem.title
				p ->
					eventItem.description
				if eventItem.url and !eventItem.location
					a '.event-url', href:eventItem.url, -> "Visit " + eventItem.title + "'s webpage"
	if @showProgrammeLink
		a href:"/info/programme", @programmeLinkText or "See full programme"
