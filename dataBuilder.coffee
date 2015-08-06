randomDate = (start, end) ->
	# gets a date between the start & end time
	return new Date(start.getTime() + (Math.random() * (end.getTime() - start.getTime())))

events = []

for i in [0..100]
	event = {}
	event = sampleEvents[Math.floor(Math.random() * sampleEvents.length)]
	event["datetime"] = randomDate(new Date(2012, 0, 1), new Date())
	events.push(clone(event))
