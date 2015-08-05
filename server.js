port = process.env.PORT || 5000

require('harp').server(__dirname, {
	port: port
}, function() {
	console.log("Listening on " + port + "...")
})
