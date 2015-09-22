PropertiesBox = React.createClass
	render: ->
		if (Object.keys(this.props.event).length == 0)
			return React.createElement "div"
		else
			console.log this.props.event
			builtArray = buildArray(this.props.event, 0)
			# console.log JSON.stringify(this.props.event, null, "	")
			React.createElement "div", {id: "properties", className: "col-sm-3"},
				React.createElement("h1", null, "Properties")
				React.createElement "table", className: "table",
					React.createElement "thead", null,
						React.createElement "tr", null,
							React.createElement("th", null, "property")
							React.createElement("th", null, "value")
						builtArray.map (row) ->
							React.createElement "tr", null,
								React.createElement "td", className: "indent-" + row[2], row[0]
								React.createElement "td", null, row[1]

buildArray = (object, indent) ->
	childArray = []
	for property, value of object
		if (property == "datetime")
			childArray.push [property, value.toString(), indent]
		else if (typeof value == "string")
			childArray.push [property, value, indent]
		else if (typeof value == "object")
			childArray.push [property, null, indent]
			childArray = childArray.concat(buildArray(value, indent + 1))
	return childArray
	# return [["actor", "ken"]]
