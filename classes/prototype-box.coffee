PrototypeBox = React.createClass
	render: ->
		React.createElement("div", null
			React.createElement(ExampleBox, {onExampleSelect: this.handleExampleSelect})
			React.createElement(EventBox, {search: this.state.search, onEventSelect: this.handleEventSelect, onSearchChange: this.handleSearchChange, onToggleFilter: this.toggleFilterOpen, selectedEvent: this.state.event})
			if (this.state.filterOpen)
				React.createElement(FilterBlade, {onSearchChange: this.handleSearchChange, search: this.state.search})
			if (this.state.propertiesOpen)
				React.createElement(PropertiesBlade, {event: this.state.event})

		)
	getInitialState: ->
		search: ""
		event: {}
	handleExampleSelect: (example) ->
		this.setState({search: example})
	handleSearchChange: (newSearch) ->
		this.setState({search: newSearch})
	handleEventSelect: (event) ->
		this.setState({event: event, filterOpen: false, propertiesOpen: true})
	toggleFilterOpen: () ->
		if (this.state.filterOpen)
			this.setState({filterOpen: false})
		else
			this.setState({filterOpen: true, propertiesOpen: false})



ExampleBox = React.createClass
	render: ->
		React.createElement("div", {id: "examples", className: "col-sm-2"}
			React.createElement("h1", null, "Examples")
			React.createElement "p", null,
				React.createElement("a", {onClick: this.handleExampleSelect.bind(this, "actor:ken")}, "actor:ken")
			React.createElement "p", null,
				React.createElement("a", {onClick: this.handleExampleSelect.bind(this, "action:user")}, "action:user")
			React.createElement "p", null,
				React.createElement("a", {onClick: this.handleExampleSelect.bind(this, "targets:sales")}, "targets:sales")
		)
	handleExampleSelect: (example) ->
		this.props.onExampleSelect(example)




React.render(
	React.createElement(PrototypeBox, null),
	document.getElementById("prototype")
)
