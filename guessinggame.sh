# test program for guessing files in current working directory (inckuding .files)

function right_guess {
if [[ $user_input -eq $file_count ]]
then
echo "Congratulations! Your guess was right!"
else
check_guess user_input
fi
}


function wrong_guess {
file_count=$(ls -la | grep ^- | wc -l)
echo "Guess again!"
read user_input
check_guess $user_input
}


function check_guess {
while [[ $user_input -ne $file_count ]]
do

if [[ $user_input -lt $file_count ]]
 then 
 echo "Your guess was too low"
 wrong_guess

elif [[ $user_input -gt $file_count  ]]
 then
 echo "Your guess was too high"
 wrong_guess  

fi
done
}


echo "Guess how many files are in the current directory."
read user_input
right_guess 

if [[ $user_input -eq $file_count ]]
then
echo "Congratulations! Your guess was right!"
else
check_guess user_input
fi
