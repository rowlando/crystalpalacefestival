for highlight, i in @highlights
	if i % 2 is 0
		if i is 0
			text "<div class='row'>"
		else
			text "</div><div class='row'>"
	div '.large-6.columns', ->
		div '.row', ->
			div '.large-12.columns', ->
				h2 '.block-heading.event-heading', id:"heading-" + i, ->
					highlight.heading
		div '.row', ->
			div '.large-12.columns', ->
				text @partial('content/event-list.html.coffee', { events: highlight.events, showProgrammeLink: true })

if @highlights.length > 0
	text "</div>"