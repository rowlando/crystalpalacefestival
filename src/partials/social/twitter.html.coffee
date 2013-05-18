---
cacheable: true
---

# Twitter
section '.twitter.links', ->
	header ->
		a href: 'https://twitter.com/se19festival', title: 'Visit our Twitter', ->
			h2 ->
				img src: '/images/twitter.png', width: '35'
				'Twitter'
	ul '.side-nav', ->
		for tweet in (@feedr.feeds.twitter or [])
			continue  if tweet.in_reply_to_user_id
			li datetime: tweet.created_at, ->
				a href: "https://twitter.com/#!/#{tweet.user.screen_name}/status/#{tweet.id_str}", title: "View on Twitter", ->
					tweet.text
			li '.divider', ->
