makeid = (length) ->
	text = "";
	possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

	for i in [0..length] by 1
		text += possible.charAt(Math.floor(Math.random() * possible.length));

	return text;
