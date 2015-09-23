eventSpec = [
	{
		identifier: "user.sign_in.success"
		description: "${actor} signed into ${app}"
		_source: "All user sign in activity report"
	}
	{
		identifier: "user.sign_in.failure"
		description: "${actor} failed to sign into ${app}"
		_source: "All user sign in activity report"
	}
	{
		identifier: "user.sign_in.suspicious"
		description: "${actor} had a suspicious sign in into ${app}"
		_source: "Security reports"
	}
	{
		identifier: "user.reset_pw.blocked"
		description: "${actor} attempted to reset their password, but is currently blocked"
		_source: "SSPR activity report"
	}
	{
		identifier: "user.reset_pw.abandoned"
		description: "${actor} attempted to reset their password, but abandoned the attempt"
		_source: "SSPR activity report"
	}
	{
		identifier: "user.reset_pw.cancelled"
		description: "${actor} attempted to reset their password, but cancelled the attempt"
		_source: "SSPR activity report"
	}
	{
		identifier: "user.reset_pw.contacted_admin"
		description: "${actor} attempted to reset their password, and contacted the admin"
		_source: "SSPR activity report"
	}
	{
		identifier: "user.reset_pw.failed"
		description: "${actor} failed to reset their password"
		_source: "SSPR activity report"
	}
	{
		identifier: "user.reset_pw.success"
		description: "${actor} successfully reset their password"
		_source: "SSPR activity report"
	}
	{
		identifier: "user.reset_pw.registered"
		description: "${actor} registered for password reset"
		_source: "SSPR registration activity report"
	}
	{
		identifier: "user.create"
		description: "${actor} created ${user}"
		_source: "Audit report"
	}
	{
		identifier: "user.update"
		description: "${actor} updated ${user}'s display name"
		_source: "Audit report"
	}
	{
		identifier: "user.delete"
		description: "${actor} deleted ${user}"
		_source: "Audit report"
	}
	{
		identifier: "group.create"
		description: "${actor} created ${group}"
		_source: "???"
	}
	{
		identifier: "group.update"
		description: "${actor} updated ${group}'s display name"
		_source: "???"
	}
	{
		identifier: "group.delete"
		description: "${actor} deleted ${group}"
		_source: "???"
	}
	{
		identifier: "group.create_request"
		description: "${actor} requested to join ${group}"
		_source: "SSGM report ??? (unknown)"
	}
	{
		identifier: "group.approve_request"
		description: "${actor} approved ${user}'s request to join ${group}"
		_source: "SSGM report (confirmed)"
	}
	{
		identifier: "group.reject_request"
		description: "${actor} rejected ${user}'s request to join ${group}"
		_source: "SSGM report ??? (unknown)"
	}
	{
		identifier: "group.add_member"
		description: "${actor} added ${user} to ${group}"
		_source: "SSGM report ??? (unknown)"
	}
	{
		identifier: "group.remove_member"
		description: "${actor} removed ${user} from ${group}"
		_source: "SSGM report (only for the access panel)/???"
	}
	{
		identifier: "app.create"
		description: "${actor} created ${app}"
		_source: "Audit report"
	}
	{
		identifier: "app.update"
		description: "${actor} updated ${app}'s display name"
		_source: "???"
	}
	{
		identifier: "app.delete"
		description: "${actor} deleted ${app}"
		_source: "Audit report"
	}
	{
		identifier: "app.assign_member"
		description: "${actor} assigned ${user} to ${app}"
		_source: "???"
	}
	{
		identifier: "app.update_member"
		description: "${actor} updated ${user}'s ${app} credentials/role"
		_source: "???"
	}
	{
		identifier: "app.remove_member"
		description: "${actor} removed ${user} from ${app}"
		_source: "???"
	}
	{
		identifier: "app.pw_rollover.success"
		description: "${actor}'s ${app} password was successfully rolled over"
		_source: "Password rollover report"
	}
	{
		identifier: "app.pw_rollover.failure"
		description: "${actor}'s ${app} password failed to roll over"
		_source: "Password rollover report"
	}
	{
		identifier: "app.provision.success"
		description: "${actor} was provisioned into ${app}"
		_source: "Account provisioning reports"
	}
	{
		identifier: "app.provision.failure"
		description: "${actor} failed to be provisioned into ${app}"
		_source: "Account provisioning reports"
	}
	{
		identifier: "directory.update"
		description: "${actor} updated Wingtip Toys's display name"
		_source: "Audit report (multiple events)"
	}
	{
		identifier: "directory.create"
		description: "Wingtip Toys was created"
		_source: "???"
	}
]
