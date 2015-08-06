eventSpec = [
	{
		identifier: "user.sign_in.success"
		description: "${actor} signed into ${app}"
		source: ""
	}
	{
		identifier: "user.sign_in.failure"
		description: "${actor} failed to sign into ${app}"
		source: ""
	}
	{
		identifier: "user.sign_in.suspicious"
		description: "${actor} had a suspicious sign in into ${app}"
		source: ""
	}
	{
		identifier: "user.reset_pw.blocked"
		description: "${actor} attempted to reset their password, but is currently blocked"
		source: ""
	}
	{
		identifier: "user.reset_pw.abandoned"
		description: "${actor} attempted to reset their password, but abandoned the attempt"
		source: ""
	}
	{
		identifier: "user.reset_pw.cancelled"
		description: "${actor} attempted to reset their password, but cancelled the attempt"
		source: ""
	}
	{
		identifier: "user.reset_pw.contacted_admin"
		description: "${actor} attempted to reset their password, and contacted the admin"
		source: ""
	}
	{
		identifier: "user.reset_pw.failed"
		description: "${actor} failed to reset their password"
		source: ""
	}
	{
		identifier: "user.reset_pw.success"
		description: "${actor} successfully reset their password"
		source: ""
	}
	{
		identifier: "user.reset_pw.registered"
		description: "${actor} registered for password reset"
		source: ""
	}
	{
		identifier: "user.create"
		description: "${actor} created ${user}"
		source: ""
	}
	{
		identifier: "user.update"
		description: "${actor} updated ${user}'s display name"
		source: ""
	}
	{
		identifier: "user.delete"
		description: "${actor} deleted ${user}"
		source: ""
	}
	{
		identifier: "group.create"
		description: "${actor} created ${group}"
		source: ""
	}
	{
		identifier: "group.update"
		description: "${actor} updated ${group}'s display name"
		source: ""
	}
	{
		identifier: "group.delete"
		description: "${actor} deleted ${group}"
		source: ""
	}
	{
		identifier: "group.create_request"
		description: "${actor} requested to join ${group}"
		source: ""
	}
	{
		identifier: "group.approve_request"
		description: "${actor} approved ${user}'s request to join ${group}"
		source: ""
	}
	{
		identifier: "group.reject_request"
		description: "${actor} rejected ${user}'s request to join ${group}"
		source: ""
	}
	{
		identifier: "group.add_member"
		description: "${actor} added ${user} to ${group}"
		source: ""
	}
	{
		identifier: "group.remove_member"
		description: "${actor} removed ${user} from ${group}"
		source: ""
	}
	{
		identifier: "app.create"
		description: "${actor} created ${app}"
		source: ""
	}
	{
		identifier: "app.update"
		description: "${actor} updated ${app}'s display name"
		source: ""
	}
	{
		identifier: "app.delete"
		description: "${actor} deleted ${app}"
		source: ""
	}
	{
		identifier: "app.assign_member"
		description: "${actor} assigned ${user} to ${app}"
		source: ""
	}
	{
		identifier: "app.update_member"
		description: "${actor} updated ${user}'s ${app} credentials/role"
		source: ""
	}
	{
		identifier: "app.remove_member"
		description: "${actor} removed ${user} from ${app}"
		source: ""
	}
	{
		identifier: "app.pw_rollover.success"
		description: "${actor}'s ${app} password was successfully rolled over"
		source: ""
	}
	{
		identifier: "app.pw_rollover.failure"
		description: "${actor}'s ${app} password failed to roll over"
		source: ""
	}
	{
		identifier: "app.provision.success"
		description: "${actor} was provisioned into ${app}"
		source: ""
	}
	{
		identifier: "app.provision.failure"
		description: "${actor} failed to be provisioned into ${app}"
		source: ""
	}
	{
		identifier: "directory.update"
		description: "${actor} updated Wingtip Toys's display name"
		source: ""
	}
	{
		identifier: "directory.create"
		description: "Wingtip Toys was created"
		source: ""
	}
]
