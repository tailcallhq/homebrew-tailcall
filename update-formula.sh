#!/bin/bash

TAG_NAME=$1

echo "Setting up variables..."

BASE_URL="https://tailcall.gateway.scarf.sh/${TAG_NAME}"
URL_X86_64="${BASE_URL}/tailcall-x86_64-apple-darwin"
URL_AARCH64="${BASE_URL}/tailcall-aarch64-apple-darwin"

SHA256_X86_64="$(curl -L -s ${URL_X86_64} | sha256sum | cut -d ' ' -f 1)"
SHA256_AARCH64="$(curl -L -s ${URL_AARCH64} | sha256sum | cut -d ' ' -f 1)"

echo "URL (x86_64): ${URL_X86_64}"
echo "SHA256 (x86_64): ${SHA256_X86_64}"
echo "URL (aarch64): ${URL_AARCH64}"
echo "SHA256 (aarch64): ${SHA256_AARCH64}"

echo "Current directory: $(pwd)"
echo "Navigating to the Formula directory..."
cd Formula || exit

echo "Updating URLs and SHA256s in tailcall.rb..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS uses a different syntax for 'sed -i'
    sed -i '' -e "/if Hardware::CPU.intel?/,/elsif Hardware::CPU.arm?/ s|url \".*\"|url \"${URL_X86_64}\"|" tailcall.rb
    sed -i '' -e "/if Hardware::CPU.intel?/,/elsif Hardware::CPU.arm?/ s|sha256 \".*\"|sha256 \"${SHA256_X86_64}\"|" tailcall.rb
    sed -i '' -e "/elsif Hardware::CPU.arm?/,/end/ s|url \".*\"|url \"${URL_AARCH64}\"|" tailcall.rb
    sed -i '' -e "/elsif Hardware::CPU.arm?/,/end/ s|sha256 \".*\"|sha256 \"${SHA256_AARCH64}\"|" tailcall.rb
    sed -i '' -e "s|version \".*\"|version \"${TAG_NAME}\"|" tailcall.rb
else
    # For Linux
    sed -i "/if Hardware::CPU.intel?/,/elsif Hardware::CPU.arm?/ s|url \".*\"|url \"${URL_X86_64}\"|" tailcall.rb
    sed -i "/if Hardware::CPU.intel?/,/elsif Hardware::CPU.arm?/ s|sha256 \".*\"|sha256 \"${SHA256_X86_64}\"|" tailcall.rb
    sed -i "/elsif Hardware::CPU.arm?/,/end/ s|url \".*\"|url \"${URL_AARCH64}\"|" tailcall.rb
    sed -i "/elsif Hardware::CPU.arm?/,/end/ s|sha256 \".*\"|sha256 \"${SHA256_AARCH64}\"|" tailcall.rb
    sed -i "s|version \".*\"|version \"${TAG_NAME}\"|" tailcall.rb
fi

echo "Script execution complete."

git config user.name "GitHub Actions"
git config user.email "actions@github.com"
git commit -am "update tailcall cli version: ${TAG_NAME}"
git push
