div '.event-container', ->
	ul ->
		for eventItem in @events
			li '.event', ->
				h4 '.event-title', ->
					eventItem.title
				if eventItem.time
					if eventItem.url
						a '.event-time', href:eventItem.url, -> eventItem.time + " @ " + eventItem.location
					else
						span '.event-time', -> eventItem.time + " @ " + eventItem.location
				p ->
					eventItem.description
	a href:'seemore', "See full programme" if @showProgrammeLink
