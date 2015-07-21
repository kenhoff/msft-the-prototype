console.log "hello"

EventBox = React.createClass
	render: ->
		React.createElement "div", id: "EventBox",
			React.createElement("h1", null, "Events")
			React.createElement(InputBox)
			React.createElement(ResultsBox)

InputBox = React.createClass
	render: ->
		React.createElement "input",
			{className: "form-control", placeholder: "Search..."}

ResultsBox = React.createClass
	render: ->
		React.createElement "table", className: "table",
			React.createElement("tr", null,
					React.createElement("th", null, "event")
					React.createElement("th", null, "datetime")
			)
			for i in [1..10] by 1
				React.createElement("tr", null,
						React.createElement("td", null, "this is an event")
						React.createElement("td", null, "this is when it happened")
				)

React.render(
	React.createElement(EventBox, null),
	document.getElementById("events")
)
