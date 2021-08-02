# Team Pasteur
# Bash script to run team mate scripts

# clone the git hub repository
git clone https://github.com/isongjosiah/team_pasteur.git

# move into the repo folder
cd team_pasteur

# list all files in the repo, loop through them and execute conditionally
file=$(ls *)
echo ${file}

