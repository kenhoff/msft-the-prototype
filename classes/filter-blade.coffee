FilterBlade = React.createClass
	render: ->
		searchObject = {}
		searchArray = this.props.search.split(" ")
		for searchArrayItem in searchArray
			if searchArrayItem.indexOf(":") > -1
				searchObject[searchArrayItem.split(":")[0]] = searchArrayItem.split(":")[1]
		console.log searchObject
		if (searchObject["actor"])
			this.refs.actor.getDOMNode().value = searchObject["actor"]
		if (searchObject["action"])
			this.refs.action.getDOMNode().value = searchObject["action"]
		if (searchObject["targets"])
			this.refs.targets.getDOMNode().value = searchObject["targets"]


		React.createElement "div", {id: "filter", className: "col-sm-3"},
			React.createElement("h1", null, "Filter")
			React.createElement "form", null,
				React.createElement "div", className: "form-group",
					React.createElement "label", null, "actor"
					React.createElement "input", {className: "form-control", onChange: this.updateFilterString, ref: "actor", type: "text"}
				React.createElement "div", className: "form-group",
					React.createElement "label", null, "action"
					React.createElement "input", {className: "form-control", onChange: this.updateFilterString, ref: "action", type: "text"}
				React.createElement "div", className: "form-group",
					React.createElement "label", null, "targets"
					React.createElement "input", {className: "form-control", onChange: this.updateFilterString, ref: "targets", type: "text"}
	updateFilterString: ->
		actorString = ""
		actionString = ""
		targetsString = ""
		actor = this.refs.actor.getDOMNode().value
		action = this.refs.action.getDOMNode().value
		targets = this.refs.targets.getDOMNode().value
		if (actor)
			actorString = "actor:" + actor

		if (action)
			actionString = "action:" + action

		if (targets)
			targetsString = "targets:" + targets

		searchString = [actorString, actionString, targetsString].join(" ")
		this.props.onSearchChange(searchString)

	componentDidMount: ->

		# do search, dump in results
		# if (searchArray.length == 0)
		# 	searchObject = this.props.search
