#!/bin/bash
set -euo pipefail

# Only run in remote Claude Code environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

echo "Installing checkov (Terraform IaC security linter)..."
pip install checkov --user --quiet
echo "checkov installed: $(~/.local/bin/checkov --version)"

# Persist PATH so checkov is available in the session
echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$CLAUDE_ENV_FILE"
