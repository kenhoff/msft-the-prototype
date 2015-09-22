app_display_names = [
	"Box"
	"Citrix GoToMeeting"
	"Concur"
	"Docusign"
	"Dropbox for Business"
	"Dynamics CRM"
	"Google Apps"
	"Jive"
	"Office 365 Exchange Online"
	"Office 365 SharePoint Online"
	"Salesforce"
	"Salesforce Sandbox"
	"ServiceNow"
	"Workday"
	"Azure Management Portal"
	"Azure Preview Portal"
]


apps = []

for app in app_display_names
	newApp = {}
	newApp["display_name"] = app
	newApp["app_id"] = app.toLowerCase().split(" ").join("")
	apps.push(newApp)
