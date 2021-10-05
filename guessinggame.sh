# test program for guessing files in current working directory (inckuding .files)

function check_guess {

while [[ $user_input -ne $file_count ]]
do
	if [[ $user_input  -lt $file_count ]]
	   then
	   echo "Your guess was too low!"
	   echo "Guess again!"
	else
	   echo "Your guess was too high!"
	   echo "Guess again!"
	fi
read user_input
done

if [[ $user_input  -eq $file_count ]]
	then
	echo "Congratulations! Your guess was right!"
fi
}

echo "Guess how many files are in the current directory."
read user_input
file_count=$(ls -la | grep ^- | wc -l)
check_guess 


