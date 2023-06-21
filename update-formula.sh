#!/bin/bash

TAG_NAME=$2

echo "Setting up variables..."
URL="https://github.com/tailcallhq/tailcall/releases/download/${TAG_NAME}/tailcall-${TAG_NAME}.zip"
SHA256="$(curl -L -s ${URL} | sha256sum | cut -d ' ' -f 1)"

echo "URL: ${URL}"
echo "SHA256: ${SHA256}"

echo "Current directory: $(pwd)"
echo "Navigating to the Formula directory..."
cd Formula

# Detect the operating system
OS="$(uname)"
echo "Operating System: ${OS}"

echo "Updating URL in tailcall.rb..."
if [ "$OS" = "Darwin" ]; then
    # macOS
    sed -i '' "s|url .*|url \"$URL\"|" tailcall.rb
else
    # Assume Linux
    sed -i "s|url .*|url \"$URL\"|" tailcall.rb
fi

echo "Updating SHA256 in tailcall.rb..."
if [ "$OS" = "Darwin" ]; then
    # macOS
    sed -i '' "s|sha256 .*|sha256 \"$SHA256\"|" tailcall.rb
else
    # Assume Linux
    sed -i "s|sha256 .*|sha256 \"$SHA256\"|" tailcall.rb
fi

echo "Updating version in tailcall.rb..."
if [ "$OS" = "Darwin" ]; then
    # macOS
    sed -i '' "s|version .*|version \"$TAG_NAME\"|" tailcall.rb
else
    # Assume Linux
    sed -i "s|version .*|version \"$TAG_NAME\"|" tailcall.rb
fi

echo "Script execution complete."
