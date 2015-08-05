PrototypeBox = React.createClass
	render: ->
		React.createElement("div", null
			React.createElement(ExampleBox, {onExampleSelect: this.handleExampleSelect})
			React.createElement(EventBox, {search: this.state.search, onEventSelect: this.handleEventSelect, onSearchChange: this.handleSearchChange})
			React.createElement(PropertiesBox, {event: this.state.event})
		)
	getInitialState: ->
		search: ""
		event: {}
	handleExampleSelect: (example) ->
		this.setState({search: example})
	handleSearchChange: (newSearch) ->
		this.setState({search: newSearch})
	handleEventSelect: (event)->
		this.setState({event: event})


ExampleBox = React.createClass
	render: ->
		React.createElement("div", {id: "examples", className: "col-sm-3"}
			React.createElement("h1", null, "Examples")
			React.createElement "p", null,
				React.createElement("a", {onClick: this.handleExampleSelect.bind(this, "Audrey Oliver")}, "Audrey Oliver")
			React.createElement "p", null,
				React.createElement("a", {onClick: this.handleExampleSelect.bind(this, "Clifford Word")}, "Clifford Word")
			React.createElement "p", null,
				React.createElement("a", {onClick: this.handleExampleSelect.bind(this, "password")}, "password")
		)
	handleExampleSelect: (example) ->
		this.props.onExampleSelect(example)




React.render(
	React.createElement(PrototypeBox, null),
	document.getElementById("prototype")
)
