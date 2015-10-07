search = (searchObject, event) ->
	if ((typeof searchObject == "string") && (typeof event == "string"))
		if (event.toLowerCase().indexOf(searchObject.toLowerCase()) > -1)
			return true
		else return false

	else if ((typeof searchObject == "string") && (typeof event == "object"))
		for key, val of event
			if search(searchObject, val)
				return true

	else if ((typeof searchObject == "object") && (typeof event == "object"))
		for key, val of searchObject
			if (!search(val, event[key]))
				return false
		return true

	return false

EventBox = React.createClass
	render: ->
		results = []
		searchObject = {}
		searchArray = this.props.search.split(" ")
		for searchArrayItem in searchArray
			if searchArrayItem.indexOf(":") > -1
				searchObject[searchArrayItem.split(":")[0]] = searchArrayItem.split(":")[1]
		# do search, dump in results
		if (searchArray.length == 0)
			searchObject = this.props.search
		console.log searchObject
		for event in events
			if search(searchObject, event)
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
