console.log "hello"

events = [
	"Audrey Oliver signed into Salesforce"
	"Audrey Oliver failed to sign into Salesforce"
	"Audrey Oliver had a suspicious sign in into Salesforce"
	"Audrey Oliver attempted to reset their password, but is currently blocked"
	"Audrey Oliver attempted to reset their password, but abandoned the attempt"
	"Audrey Oliver attempted to reset their password, but cancelled the attempt"
	"Audrey Oliver attempted to reset their password, and contacted the admin"
	"Audrey Oliver failed to reset their password"
	"Audrey Oliver successfully reset their password"
	"Audrey Oliver registered for password reset"
	"Clifford Word created Audrey Oliver"
	"Clifford Word updated Audrey Oliver's display name"
	"Clifford Word deleted Audrey Oliver"
	"Clifford Word created the Sales group"
	"Clifford Word updated the Sales group's display name"
	"Clifford Word deleted the Sales group"
	"Audrey Oliver requested to join the Sales group"
	"Clifford Word approved Audrey Oliver's request to join the Sales group"
	"Clifford Word rejected Audrey Oliver's request to join the Sales group"
	"Clifford Word added Audrey Oliver to the Sales group"
	"Clifford Word removed Audrey Oliver to the Sales group"
	"Clifford Word created Salesforce"
	"Clifford Word updated Salesforce's display name"
	"Clifford Word deleted Salesforce"
	"Clifford Word assigned Audrey Oliver to  Salesforce"
	"Clifford Word updated Audrey Oliver's Salesforce credentials/role"
	"Clifford Word removed Audrey Oliver from  Salesforce"
	"Audrey Oliver's Salesforce password was successfully rolled over"
	"Audrey Oliver's Salesforce password failed to roll over"
	"Audrey Oliver was provisioned into Salesforce"
	"Audrey Oliver failed to be provisioned into Salesforce"
	"Wingtip Toys was created"
	"Clifford Word updated Wingtip Toys's display name"
]

search = (searchString, event) ->
	if event.indexOf(searchString) > -1
		return true





EventBox = React.createClass
	render: ->
		React.createElement "div", id: "EventBox",
			React.createElement("h1", null, "Events")
			React.createElement(InputBox, {searchString: this.state.searchString, onSearchChange: this.handleSearchChange})
			React.createElement(ResultsBox, {resultsList: this.state.resultsList})
	handleSearchChange: (searchString) ->
		results = []
		for event in events
			if search(searchString, event)
				results.push(event)
		# console.log results
		this.setState {searchString: searchString, resultsList: results}
	getInitialState: ->
		searchString: ""
		resultsList: events

InputBox = React.createClass
	render: ->
		React.createElement "input",
			{className: "form-control", placeholder: "Search...", type: "text", value: this.props.searchString, onChange: this.handleChange}
	handleChange: (event) ->
		this.props.onSearchChange(event.target.value)

ResultsBox = React.createClass
	render: ->
		# console.log this.props.resultsList
		React.createElement "table", className: "table",
			React.createElement "thead", null,
				React.createElement("tr", null,
						React.createElement("th", null, "event")
						React.createElement("th", null, "datetime")
				)
			React.createElement "tbody", null,
				this.props.resultsList.map (result) ->
					React.createElement("tr", null,
						React.createElement("td", null, result)
						React.createElement("td", null, "this is when it happened")
					)


React.render(
	React.createElement(EventBox, null),
	document.getElementById("events")
)
