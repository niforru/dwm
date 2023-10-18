//Modify this file to change what commands output to your statusbar, and recompile using the make command.
//Adding Upspeed and Downspeed soon as seperate scripts

static const Block blocks[] = {
	/*Icon*/		/*Command*/															/*Update Interval*/	/*Update Signal*/
	{"Mem:", 		"free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",				30,					0},
	{"Vol:",		"amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }'",		1,					0},
	/*{"Up",		"upspeed"																1					0},*/
	/*{"Down",		"downspeed"																1,					0},*/
	{"", 			"date '+%a %b %d %I:%M%p'",												5,					0},
	{"Bat%: ", 		"cat /sys/class/power_supply/BAT0/capacity",							5,					0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ~> ";
static unsigned int delimLen = 5;
