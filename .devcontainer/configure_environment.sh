echo "Installing http-server..."

npm i -g http-server

if [ $? -eq 0 ]; then
    echo "http-server installed!"
else
    echo "Failed to install http-server."
    exit 1
fi
