ResultsBox = React.createClass
	handleEventSelect: (event) ->
		this.props.onEventSelect(event)
	render: ->
		React.createElement "table", {className: "table table-hover"},
			React.createElement "thead", null,
				React.createElement("tr", null,
					React.createElement("th", null, "actor")
					React.createElement("th", null, "action")
					React.createElement("th", null, "targets")
					React.createElement("th", null, "datetime")
				)
			React.createElement "tbody", null,
				this.props.resultsList.map (result) =>
					humanReadableDatetime = moment.duration(-moment().diff(result.datetime)).humanize(true)
					if this.props.selectedEvent.event_id == result.event_id
						React.createElement "tr", {onClick: this.handleEventSelect.bind(this, result), style: {"cursor": "pointer"}, key: result.event_id, className: "info"},
							React.createElement("td", null, result.actor.display_name)
							React.createElement("td", null, result.action)
							React.createElement("td", null, result.targets[0].display_name)
							React.createElement("td", null, humanReadableDatetime) # this is where we would put moment.js conversion/formatting
					else
						React.createElement "tr", {onClick: this.handleEventSelect.bind(this, result), style: {"cursor": "pointer"}, key: result.event_id},
							React.createElement("td", null, result.actor.display_name)
							React.createElement("td", null, result.action)
							React.createElement("td", null, result.targets[0].display_name)
							React.createElement "td", null, humanReadableDatetime # this is where we would put moment.js conversion/formatting
