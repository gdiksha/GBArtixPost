//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/							/*Update Interval*/	/*Update Signal*/
	{"IP: ",	"ip a | awk 'FNR==9 {print \"/ \" $2}'",			60,			0},
	
	{"Disk: ", 	"df -h / | awk 'FNR==2 {print $3 \" / \" $4}'",			3600, 			0},

	{"Mem: ", 	"free -h | awk '/^Mem/ { print $3\" / \"$2 }' | sed s/i//g",	30,			0},

	{"", 		"date '+%b %d (%a) %I:%M%p'",					5,			0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
