------------------------------ Edit Things Below This Line ------------------------------
password = (' ') -- Enter your password here.
output = (' ') -- Enter output side (front, back, top, bottom, left or right.)
welcomeText = (' ') -- Enter the text that appears when you open the computer.
correctGuess = (' ') -- Enter the text that appears when you guess the correct password.
wrongGuess = (' ') -- Enter the text that appears if you enter the wrong password.
openTime = (' ') -- Enter a time (in seconds) that you want the door to be open for.
------------------------------ DO NOT EDIT BELOW LINE ------------------------------

os.pullEvent = os.pullEventRaw -- makes it so people can't exit the program

term.clear() -- clears the screen

print(welcomeText)

guess == read(*) -- puts their guess into a variable and changes the text on screen to *.

if guess == password then -- if the guess is correct
	print(correctGuess)
	rs.setOutput(output) true -- opens the door
	sleep(openTime)
	rs.setOutput(output) false -- closes the door
	os.reboot()
else
	print(wrongGuess)
	sleep(5)
	os.reboot()