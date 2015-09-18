randomDate = (start, end) ->
	# gets a date between the start & end time
	return new Date(start.getTime() + (Math.random() * (end.getTime() - start.getTime())))

events = []

for i in [0..100]
	event = {}
	# event["actor"] = {
	# 	"display_name": "Ken Hoff",
	# 	"upn": "kenhoff@microsoft.com"
	# }
	event["actor"] = users[Math.floor(Math.random() * users.length)]
	event["action"] = actions[Math.floor(Math.random() * actions.length)]
	event["targets"] = [apps[Math.floor(Math.random() * apps.length)]]
	event["datetime"] = randomDate(new Date(2015, 0, 1), new Date())
	# console.log event
	events.push(clone(event))
