console.log "hello"

search = (searchString, event) ->
	if event.description.toLowerCase().indexOf(searchString.toLowerCase()) > -1
		return true

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
			React.createElement("h1", null, "Events")
			React.createElement(InputBox, {searchString: this.props.search, onSearchChange: this.handleSearchChange})
			React.createElement(ResultsBox, {resultsList: results, onEventSelect: this.handleEventSelect})
	handleSearchChange: (searchString) ->
		this.props.onSearchChange(searchString)
	getInitialState: ->
		return {
			searchString: this.props.search
		}
	handleEventSelect: (event) ->
		this.props.onEventSelect(event)
