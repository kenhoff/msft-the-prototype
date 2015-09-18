PropertiesBox = React.createClass
	render: ->
		console.log this.props.event
		React.createElement "div", {id: "properties", className: "col-sm-3"},
			React.createElement("h1", null, "Properties")
			React.createElement "table", className: "table",
				React.createElement "thead", null,
					React.createElement "tr", null,
						React.createElement("th", null, "property")
						React.createElement("th", null, "value")
				React.createElement "tbody", null,
					for key, value of this.props.event
						React.createElement(PropertiesRow, {key: key, value: value})


PropertiesRow = React.createClass
	# console.log "rendering #{key}"
	render: ->
		if (typeof value == "string")
			# console.log "it's a string!"
			React.createElement "tr", null,
				# just render the key and value
				React.createElement("td", null, key)
				React.createElement("td", null, value)
		else if (typeof value == "object")
			# console.log "it's an object!"
			React.createElement "tr", null,
				React.createElement("td", null, key)
				React.createElement("td", null, "")





		# for key2, value2 of value
		# 	renderKeyValue(key2, value2)





# write a row
# attempt to render the value, indent key by 1






	# for key, value of this.props.event
	# 		React.createElement("td", null, key)
	# 		if (key == "datetime")
	# 			React.createElement("td", null, value.toString())
	# 		else
	# 			for key2, value2 of value
	# 				console.log value2
	# 			React.createElement("td", null, value)
