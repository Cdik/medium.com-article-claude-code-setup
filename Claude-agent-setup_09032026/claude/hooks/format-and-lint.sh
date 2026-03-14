#!/usr/bin/env bash
set -euo pipefail

# Get the file path from hook input (passed via stdin as JSON)
FILE_PATH=$(jq -r '.tool_input.file_path')

# Format with Prettier (skip if no parser available)
npx prettier --write "$FILE_PATH" 2>/dev/null || true

# Fix with ESLint (only for supported file types)
if [[ "$FILE_PATH" =~ \.(js|jsx|ts|tsx|mjs|cjs)$ ]]; then
  npx eslint --fix "$FILE_PATH" 2>/dev/null || true
fi