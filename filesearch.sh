if [ $# = 2 ]
then
	echo "Entered expected arguments"
	if [ -d $1 ]
	then 
		echo "directory exists"


if [ -d $1/.git ]
then
	echo "$1 is valid git repository path"
	var = `git branch --list $2 | grep $2`
	if [ $var = 0 ]
	then
		echo "Branch $2 already exists"
		exit 1
	else
		git checkout -b $2
		echo"Branch $2 is created"
		echo "New file created in $2  branch" > file03.txt
		git add .
		git commit -m "commit newly created file"
		git push -u origin $2
	fi
else
	echo "Please enter valid git repository, enter $1 path is incorrect"
	fi
else
	echo "$1 directory doesnot exists"
fi
else 
	exit 1
fi


