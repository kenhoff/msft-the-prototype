ResultsBox = React.createClass
	handleEventSelect: (event) ->
		this.props.onEventSelect(event)
	render: ->
		React.createElement "table", {className: "table"},
			React.createElement "thead", null,
				React.createElement("tr", null,
					React.createElement("th", null, "event")
					React.createElement("th", null, "datetime")
				)
			React.createElement "tbody", null,
				this.props.resultsList.map (result) =>
					React.createElement "tr", {onClick: this.handleEventSelect.bind(this, result)},
						React.createElement("td", null, result.description)
						React.createElement("td", null, result.datetime.toDateString()) # this is where we would put moment.js conversion/formatting
