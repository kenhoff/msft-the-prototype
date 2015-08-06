randomDate = (start, end) ->
	# gets a date between the start & end time
	return new Date(start.getTime() + (Math.random() * (end.getTime() - start.getTime())))

events = []

for i in [0..100]
	event = {}
	event = clone(eventSpec[Math.floor(Math.random() * eventSpec.length)])
	event["description"] = event["description"].replace("${actor}", users[Math.floor(Math.random() * users.length)])
	event["description"] = event["description"].replace("${app}", apps[Math.floor(Math.random() * apps.length)])
	event["description"] = event["description"].replace("${user}", users[Math.floor(Math.random() * users.length)])
	event["description"] = event["description"].replace("${group}", groups[Math.floor(Math.random() * groups.length)])
	event["datetime"] = randomDate(new Date(2012, 0, 1), new Date())
	events.push(clone(event))
