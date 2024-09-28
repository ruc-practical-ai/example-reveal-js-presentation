echo "Installing http-server..."

npm i -g http-server

if [ $? -eq 0 ]; then
    echo "http-server installed!"
else
    echo "Failed to install http-server."
    exit 1
fi

echo "Installing Git LFS..."

sudo apt-get install git-lfs &&
git lfs install

if [ $? -eq 0 ]; then
    echo "Git LFS installed!"
else
    echo "Failed to install Git LFS."
    exit 1
fi

echo "Getting convenient bash shortcuts..."

add_aliases() {
    touch $HOME/.bash_profile
    file_name=$(basename "$1")
    wget -P $HOME $1
    echo "source ~/$file_name" >> $HOME/.bash_profile
}

COMMAND_LINE_ALIASES_FILE="https://raw.githubusercontent.com/mauro-j-sanchirico/personal-scripts/refs/heads/main/bash_aliases/command_line.bash_aliases"
GIT_ALIASES_FILE="https://raw.githubusercontent.com/mauro-j-sanchirico/personal-scripts/refs/heads/main/bash_aliases/git.bash_aliases"
POETRY_ALIASES_FILE="https://raw.githubusercontent.com/mauro-j-sanchirico/personal-scripts/refs/heads/main/bash_aliases/poetry.bash_aliases"

add_aliases $COMMAND_LINE_ALIASES_FILE
add_aliases $GIT_ALIASES_FILE
add_aliases $POETRY_ALIASES_FILE

echo 'source $HOME/.bash_profile' >> $HOME/.bashrc
echo "Success!"

exit 0
