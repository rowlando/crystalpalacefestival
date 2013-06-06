# Wait
wait = (delay,callback) -> setTimeout(callback,delay)

$(document).foundation()

# Hide failed images
images = document.getElementsByTagName('img')
for img in images
	img.onerror = ->
		a = @parentNode
		li = a.parentNode
		if li.tagName.toLowerCase() is 'li'
			li.parentNode.removeChild(li)
		else
			@parentNode.removeChild(@)

# Prevent Scroll Bubbling
# When the item has finished scrolling, prevent it the scroll from bubbling to parent elements
$.fn.preventScrollBubbling = ->
	$(@).bind 'mousewheel', (event, delta, deltaX, deltaY) ->
		@scrollTop -= (deltaY*20)
		event.preventDefault()

# Get Root URL
# https://github.com/balupton/history.js/blob/master/scripts/uncompressed/history.js#L358
getRootUrl = ->
	rootUrl = document.location.protocol + "//" + (document.location.hostname or document.location.host)
	rootUrl += ":" + document.location.port  if document.location.port or false
	rootUrl += "/"
	rootUrl

# ---------------------------------
# Selectors

# Internal Helper
$.expr[":"].internal = (obj, index, meta, stack) ->
	# Prepare
	$this = $(obj)
	url = $this.attr("href") or $this.data("href") or ""
	rootUrl = getRootUrl()

	# Check link
	isInternalLink = url.substring(0, rootUrl.length) is rootUrl or url.indexOf(":") is -1

	# Ignore or Keep
	return isInternalLink


# External Helper
$.expr[":"].external = (obj, index, meta, stack) ->
	return $.expr[":"].internal(obj, index, meta, stack) is false
