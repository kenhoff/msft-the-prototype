PrototypeBox = React.createClass
	render: ->
		React.createElement("div", null
			React.createElement(ExampleBox, {onExampleSelect: this.handleExampleSelect})
			React.createElement(EventBox, {search: this.state.search})
			React.createElement(PropertiesBox, null)
		)
	handleExampleSelect: (example) ->
		this.setState {search: example}
	getInitialState: ->
		search: ""


ExampleBox = React.createClass
	render: ->
		React.createElement("div", {id: "examples", className: "col-sm-3"}
			React.createElement("h1", null, "Examples")
			React.createElement("a", {onClick: this.handleExampleSelect.bind(this, "Audrey Oliver")}, "Audrey Oliver")
		)
	handleExampleSelect: (example) ->
		# console.log example
		this.props.onExampleSelect(example)

PropertiesBox = React.createClass
	render: ->
		React.createElement("div", {id: "properties", className: "col-sm-3"}
			React.createElement("h1", null, "Properties")
		)


React.render(
	React.createElement(PrototypeBox, null),
	document.getElementById("prototype")
)
