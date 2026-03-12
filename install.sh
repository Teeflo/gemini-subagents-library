#!/bin/bash

# Gemini SubAgents Library Installer
# This script installs the agents into the local project or global Gemini CLI config

set -e

TARGET_DIR="./.gemini/agents"
REPO_URL="https://github.com/Teeflo/gemini-subagents-library.git"

echo "🤖 Gemini CLI SubAgents Installer"
echo "----------------------------------"

if [ ! -d ".git" ] && [ "$1" != "--global" ]; then
    echo "⚠️ Not in a git repository. Installing globally..."
    TARGET_DIR="$HOME/.gemini/agents"
fi

if [ "$1" == "--global" ]; then
    TARGET_DIR="$HOME/.gemini/agents"
fi

echo "Target directory: $TARGET_DIR"
mkdir -p "$TARGET_DIR"

# Clone to temp
TEMP_DIR=$(mktemp -d)
echo "Downloading library..."
git clone --depth 1 "$REPO_URL" "$TEMP_DIR" > /dev/null 2>&1

# Copy agents
echo "Installing 3,500+ experts..."
cp -r "$TEMP_DIR/.gemini/agents/"* "$TARGET_DIR/"

# Cleanup
rm -rf "$TEMP_DIR"

echo "✅ Installation complete! You now have a world-class AI workforce at your fingertips."
echo "Type 'gemini --list-agents' to see your new experts."
