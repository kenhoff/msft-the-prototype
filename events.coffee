sampleEvents = [
	{
		description: "Audrey Oliver signed into Salesforce"
		datetime: "7/21/15 12:54 PM"
	}
	{
		description: "Audrey Oliver failed to sign into Salesforce"
		datetime: "7/20/15 7:17 AM"
	}
	{
		description: "Audrey Oliver had a suspicious sign in into Salesforce"
		datetime: "7/19/15 1:40 AM"
	}
	{
		description: "Audrey Oliver attempted to reset their password, but is currently blocked"
		datetime: "7/17/15 8:03 PM"
	}
	{
		description: "Audrey Oliver attempted to reset their password, but abandoned the attempt"
		datetime: "7/16/15 2:26 PM"
	}
	{
		description: "Audrey Oliver attempted to reset their password, but cancelled the attempt"
		datetime: "7/15/15 8:49 AM"
	}
	{
		description: "Audrey Oliver attempted to reset their password, and contacted the admin"
		datetime: "7/14/15 3:12 AM"
	}
	{
		description: "Audrey Oliver failed to reset their password"
		datetime: "7/12/15 9:35 PM"
	}
	{
		description: "Audrey Oliver successfully reset their password"
		datetime: "7/11/15 3:58 PM"
	}
	{
		description: "Audrey Oliver registered for password reset"
		datetime: "7/10/15 10:21 AM"
	}
	{
		description: "Clifford Word created Audrey Oliver"
		datetime: "7/9/15 4:44 AM"
	}
	{
		description: "Clifford Word updated Audrey Oliver's display name"
		datetime: "7/7/15 11:07 PM"
	}
	{
		description: "Clifford Word deleted Audrey Oliver"
		datetime: "7/6/15 5:30 PM"
	}
	{
		description: "Clifford Word created the Sales group"
		datetime: "7/5/15 11:53 AM"
	}
	{
		description: "Clifford Word updated the Sales group's display name"
		datetime: "7/4/15 6:16 AM"
	}
	{
		description: "Clifford Word deleted the Sales group"
		datetime: "7/3/15 12:39 AM"
	}
	{
		description: "Audrey Oliver requested to join the Sales group"
		datetime: "7/1/15 7:02 PM"
	}
	{
		description: "Clifford Word approved Audrey Oliver's request to join the Sales group"
		datetime: "6/30/15 1:25 PM"
	}
	{
		description: "Clifford Word rejected Audrey Oliver's request to join the Sales group"
		datetime: "6/29/15 7:48 AM"
	}
	{
		description: "Clifford Word added Audrey Oliver to the Sales group"
		datetime: "6/28/15 2:11 AM"
	}
	{
		description: "Clifford Word removed Audrey Oliver to the Sales group"
		datetime: "6/26/15 8:34 PM"
	}
	{
		description: "Clifford Word created Salesforce"
		datetime: "6/25/15 2:57 PM"
	}
	{
		description: "Clifford Word updated Salesforce's display name"
		datetime: "6/24/15 9:20 AM"
	}
	{
		description: "Clifford Word deleted Salesforce"
		datetime: "6/23/15 3:43 AM"
	}
	{
		description: "Clifford Word assigned Audrey Oliver to Salesforce"
		datetime: "6/21/15 10:06 PM"
	}
	{
		description: "Clifford Word updated Audrey Oliver's Salesforce credentials/role"
		datetime: "6/20/15 4:30 PM"
	}
	{
		description: "Clifford Word removed Audrey Oliver from Salesforce"
		datetime: "6/19/15 10:53 AM"
	}
	{
		description: "Audrey Oliver's Salesforce password was successfully rolled over"
		datetime: "6/18/15 5:16 AM"
	}
	{
		description: "Audrey Oliver's Salesforce password failed to roll over"
		datetime: "6/16/15 11:39 PM"
	}
	{
		description: "Audrey Oliver was provisioned into Salesforce"
		datetime: "6/15/15 6:02 PM"
	}
	{
		description: "Audrey Oliver failed to be provisioned into Salesforce"
		datetime: "6/14/15 12:25 PM"
	}
	{
		description: "Wingtip Toys was created"
		datetime: "6/13/15 6:48 AM"
	}
	{
		description: "Clifford Word updated Wingtip Toys's display name"
		datetime: "6/12/15 1:11 AM"
	}
]


randomDate = (start, end) ->
	new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime()))

events = []

for i in [0..100]
	event = sampleEvents[Math.floor(Math.random() * sampleEvents.length)]
	Math.seedrandom()
	newDatetime = randomDate(new Date(2012, 0, 1), new Date())
	event["datetime"] = newDatetime
	events.push(event)
