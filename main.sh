# Team Pasteur
# Bash script to run team mate scripts

# clone the git hub repository
# git clone https://github.com/isongjosiah/team_pasteur.git

# move into the repo folder
cd team_pasteur

# list all files in the repo, loop through them and execute conditionally
files=$(ls *)
echo ${files}

for file in $files
do
    # split files based on extension
    filename=$(basename -- $file)
    extension=${filename##*.}
    filename=${filename%.*}

    # execute based on extension
    case $extension in
    "c")
        echo "C file"
        ;;
    "py")
        echo "Python file"
        ;;
    "js")
        echo "Javascript file"
        ;;
    "c++")
        echo "C++ file"
        ;;
    "c#")
        echo "C# file"
        ;;
    "java")
        echo "Java file"
        ;;
    "r")
        echo "R file"
        ;;
    "rb")
        echo "Ruby file"
    esac

done