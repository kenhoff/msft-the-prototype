search = (searchString, event) ->
	for property, value of event
		if (typeof value == "string")
			if (value.toLowerCase().indexOf(searchString.toLowerCase()) > -1)
				return true
		else if (typeof value == "object")
			if search(searchString, value)
				return true
	return false

EventBox = React.createClass
	render: ->
		results = []
		# do search, dump in results
		for event in events
			if search(this.props.search, event)
				results.push(event)
		# sort results
		results.sort (a, b) ->
			b.datetime.getTime() - a.datetime.getTime()
		React.createElement "div", {id: "events", className: "col-sm-6"},
			React.createElement("h1", null, "Event Log")
			React.createElement(Buttons, {onFilterClick: this.handleFilterClick})
			React.createElement(InputBox, {searchString: this.props.search, onSearchChange: this.handleSearchChange})
			React.createElement(ResultsBox, {resultsList: results, onEventSelect: this.handleEventSelect, selectedEvent: this.props.selectedEvent})
	handleSearchChange: (searchString) ->
		this.props.onSearchChange(searchString)
	getInitialState: ->
		return {
			searchString: this.props.search
		}
	handleEventSelect: (event) ->
		this.props.onEventSelect(event)
	handleFilterClick: () ->
		this.props.onToggleFilter()

Buttons = React.createClass
	render: ->
		React.createElement "div", className: "row",
				React.createElement "i", {className: "fa fa-filter fa-3x", style: {"cursor": "pointer", "padding": 15}, onClick: this.handleClick}
	handleClick: ->
		this.props.onFilterClick()
