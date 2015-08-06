InputBox = React.createClass
	render: ->
		React.createElement "input",
			{className: "form-control", placeholder: "Search...", type: "text", value: this.props.searchString, onChange: this.handleChange}
	handleChange: (event) ->
		this.props.onSearchChange(event.target.value)
