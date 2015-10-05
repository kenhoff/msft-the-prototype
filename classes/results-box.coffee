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
					React.createElement "tr", {onClick: this.handleEventSelect.bind(this, result), style: {"cursor": "pointer"}},
						React.createElement("td", null, result.actor.display_name)
						React.createElement("td", null, result.action)
						React.createElement("td", null, result.targets[0].display_name)
						React.createElement("td", null, result.datetime.toDateString()) # this is where we would put moment.js conversion/formatting
