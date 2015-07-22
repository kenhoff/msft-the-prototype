console.log "hello"

search = (searchString, event) ->
	if event.description.toLowerCase().indexOf(searchString.toLowerCase()) > -1
		return true

EventBox = React.createClass
	render: ->
		React.createElement "div", {id: "events", className: "col-sm-6"},
			React.createElement("h1", null, "Events")
			React.createElement(InputBox, {searchString: this.state.searchString, onSearchChange: this.handleSearchChange})
			React.createElement(ResultsBox, {resultsList: this.state.resultsList, onEventSelect: this.handleEventSelect})
	handleSearchChange: (searchString) ->
		results = []
		for event in events
			if search(searchString, event)
				results.push(event)
		this.setState {searchString: searchString, resultsList: results}
	getInitialState: ->
		return {
			searchString: this.props.search
			resultsList: events
		}
	componentWillReceiveProps: (nextProps)->
		this.handleSearchChange(nextProps.search)
	handleEventSelect: (event) ->
		this.props.onEventSelect(event)



InputBox = React.createClass
	render: ->
		React.createElement "input",
			{className: "form-control", placeholder: "Search...", type: "text", value: this.props.searchString, onChange: this.handleChange}
	handleChange: (event) ->
		this.props.onSearchChange(event.target.value)

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
						React.createElement("td", null, result.datetime)
