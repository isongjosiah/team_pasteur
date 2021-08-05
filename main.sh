# Team Pasteur
# Bash script to run team mate scripts

# clone the git hub repository
git clone https://github.com/isongjosiah/team_pasteur.git

# download all programs
apt-get -y install ruby

# move into the repo folder
cd team_pasteur

# list all files in the repo, loop through them and execute conditionally
files=$(ls *)
rm -rf temp_file.csv
touch temp_file.csv

for file in $files
do
    # split files based on extension
    filename=$(basename -- $file)
    extension=${filename##*.}
    filename=${filename%.*}

    # execute based on extension and write information to txt file
    case $extension in
    "c")
        echo "C file"
        clang $file -o $filename
        ./$filename >> temp_file.csv
        ;;
    "py")
        echo "Python file"
        python3 $file >> temp_file.csv
        ;;
    "js")
        echo "Javascript file"
        node $file >> temp_file.csv
        ;;
    "c++")
        echo "C++ file"
        g++ -o $filename $file
        ./$filename >> temp_file.csv
        ;;
    "cs")
        echo "Cs file"
        csc $filename
        ./$file >> temp_file.csv
        ;;
    "java")
        echo "Java file"
        javac $file
        java $filename >> temp_file.csv
        ;;
    "r")
        echo "R file"
        Rscript $file >> temp_file.csv
        ;;
    "rb")
        echo "Ruby file"
        ruby $file >> temp_file.csv   
    esac

done

# write from txt to csv file
