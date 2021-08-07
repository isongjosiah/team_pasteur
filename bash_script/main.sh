# Team Pasteur
# Bash script to run team mate scripts

# clone the git hub repository
git clone https://github.com/isongjosiah/team_pasteur.git

# download all programs
sudo apt-get -y install git
sudo apt-get -y install ruby
sudo apt-get -y install python3
sudo apt-get -y install clang
sudo apt-get -y install nodejs
sudo apt-get -y install csc
sudo apt-get -y install default-jdk
sudo apt-get -y install default-jre
sudo apt-get -y install r-base

# move into the repo folder
cd team_pasteur

# list all files in the repo, loop through them and execute conditionally
files=$(ls *)
sudo rm -rf pasteur.csv
touch pasteur.csv
echo "name, email, slack_username, biostack, twitter_handle, hamming_distance" >> pasteur.csv

for file in $files
do
    # split files based on extension
    filename=$(basename -- $file)
    extension=${filename##*.}
    filename=${filename%.*}

    # execute based on extension and write information to txt file
    case $extension in
    "c")
        echo "Executing C file"
        clang $file -o $filename
        ./$filename >> pasteur.csv
        ;;
    "py")
        echo "Executing python file"
        python3 $file >> pasteur.csv
        ;;
    "js")
        echo "Executing javascript file"
        node $file >> pasteur.csv
        ;;
    "cpp")
        echo "Executing C++ file"
        clang -o $filename $file
        ./$filename >> pasteur.csv
        ;;
    "cs")
        echo "Executing CS file"
        csc $filename
        ./$file >> pasteur.csv
        ;;
    "java")
        echo "Executing Java file"
        javac $file
        java $filename >> pasteur.csv
        ;;
    "R")
        echo "Executing R file"
        Rscript $file >> pasteur.csv
        ;;
    "rb")
        echo "Executing Ruby file"
        ruby $file >> pasteur.csv
        ;;
    "sh")
        echo "Executing Bash file"
        chmod +x $file
        ./$file >> pasteur.csv
    esac

done

# open the file
xdg-open ./pasteur.csv
