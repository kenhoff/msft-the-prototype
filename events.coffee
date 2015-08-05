sampleEvents = [
	{
		description: "Audrey Oliver signed into Salesforce"
	}
	{
		description: "Audrey Oliver failed to sign into Salesforce"
	}
	{
		description: "Audrey Oliver had a suspicious sign in into Salesforce"
	}
	{
		description: "Audrey Oliver attempted to reset their password, but is currently blocked"
	}
	{
		description: "Audrey Oliver attempted to reset their password, but abandoned the attempt"
	}
	{
		description: "Audrey Oliver attempted to reset their password, but cancelled the attempt"
	}
	{
		description: "Audrey Oliver attempted to reset their password, and contacted the admin"
	}
	{
		description: "Audrey Oliver failed to reset their password"
	}
	{
		description: "Audrey Oliver successfully reset their password"
	}
	{
		description: "Audrey Oliver registered for password reset"
	}
	{
		description: "Clifford Word created Audrey Oliver"
	}
	{
		description: "Clifford Word updated Audrey Oliver's display name"
	}
	{
		description: "Clifford Word deleted Audrey Oliver"
	}
	{
		description: "Clifford Word created the Sales group"
	}
	{
		description: "Clifford Word updated the Sales group's display name"
	}
	{
		description: "Clifford Word deleted the Sales group"
	}
	{
		description: "Audrey Oliver requested to join the Sales group"
	}
	{
		description: "Clifford Word approved Audrey Oliver's request to join the Sales group"
	}
	{
		description: "Clifford Word rejected Audrey Oliver's request to join the Sales group"
	}
	{
		description: "Clifford Word added Audrey Oliver to the Sales group"
	}
	{
		description: "Clifford Word removed Audrey Oliver to the Sales group"
	}
	{
		description: "Clifford Word created Salesforce"
	}
	{
		description: "Clifford Word updated Salesforce's display name"
	}
	{
		description: "Clifford Word deleted Salesforce"
	}
	{
		description: "Clifford Word assigned Audrey Oliver to Salesforce"
	}
	{
		description: "Clifford Word updated Audrey Oliver's Salesforce credentials/role"
	}
	{
		description: "Clifford Word removed Audrey Oliver from Salesforce"
	}
	{
		description: "Audrey Oliver's Salesforce password was successfully rolled over"
	}
	{
		description: "Audrey Oliver's Salesforce password failed to roll over"
	}
	{
		description: "Audrey Oliver was provisioned into Salesforce"
	}
	{
		description: "Audrey Oliver failed to be provisioned into Salesforce"
	}
	{
		description: "Wingtip Toys was created"
	}
	{
		description: "Clifford Word updated Wingtip Toys's display name"
	}
]

randomDate = (start, end) ->
	# gets a date between the start & end time
	return new Date(start.getTime() + (Math.random() * (end.getTime() - start.getTime())))

events = []

for i in [0..100]
	event = {}
	event = sampleEvents[Math.floor(Math.random() * sampleEvents.length)]
	event["datetime"] = randomDate(new Date(2012, 0, 1), new Date())
	events.push(clone(event))
