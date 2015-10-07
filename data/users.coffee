user_display_names = [
	"Pearlie Morales"
	"Juliet Moody"
	"Molly Warren"
	"Harley Surratt"
	"Flossie Nichols"
	"Michelle Carrillo"
	"Donald Collado"
	"Jefferson Shifflett"
	"Liza Horne"
	"Marguerite Mack"
	"Ricky Hillard"
	"Kathryn Franklin"
	"Leonor Downs"
	"Guadalupe Coffey"
	"Lupe Abbott"
	"Christi Holcomb"
	"Helga Mendoza"
	"Alyce Miller"
	"Ali Bayne"
	"Audrey Oliver"
	"Clifford Word"
	"Ken Hoff"
]

users = []

for user in user_display_names
	newUser = {}
	newUser["display_name"] = user
	newUser["upn"] = user.toLowerCase().split(" ").join(".") + "@contoso.com"
	users.push(newUser)

# console.log users
