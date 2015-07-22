PropertiesBox = React.createClass
	render: ->
		React.createElement "div", {id: "properties", className: "col-sm-3"},
			React.createElement("h1", null, "Properties")
			React.createElement "table", className: "table",
				React.createElement "thead", null,
					React.createElement "tr", null,
							React.createElement("th", null, "property")
							React.createElement("th", null, "value")
				React.createElement "tbody", null,
					for key, value of this.props.event
						React.createElement "tr", null,
							React.createElement("td", null, key)
							React.createElement("td", null, value)
