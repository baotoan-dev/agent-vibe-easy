#!/bin/bash
TARGET_DIR="./.agents"
REPO_URL="https://github.com/baotoan-dev/agent-vibe-easy.git"

echo -e "\033[0;36m🛸 [Agent Vibe Easy] Initializing master agent toolkit...\033[0m"

if [ -d "$TARGET_DIR" ]; then
    echo -e "\033[0;33m⚠️ .agents directory already exists. Pulling latest updates...\033[0m"
    cd "$TARGET_DIR" && git pull origin main
else
    git clone "$REPO_URL" "$TARGET_DIR" --quiet
    echo -e "\033[0;32m✅ Successfully installed into .agents!\033[0m"
    echo -e "📦 54 Skills | 11 Rules (Auto-Routing) | 5 Workflows | 6 Subagents | 7 Templates"
fi
