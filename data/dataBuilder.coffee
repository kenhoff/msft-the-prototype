randomDate = (start, end) ->
	# gets a date between the start & end time
	return new Date(start.getTime() + (Math.random() * (end.getTime() - start.getTime())))

events = []

for i in [0..100]
	event = {}
	event["actor"] = users[Math.floor(Math.random() * users.length)]
	event["action"] = actions[Math.floor(Math.random() * actions.length)]
	event["targets"] = [apps[Math.floor(Math.random() * apps.length)]]
	event["datetime"] = randomDate(new Date(2014, 0, 1), new Date())
	event["event_id"] = makeid(32)
	events.push(clone(event))
