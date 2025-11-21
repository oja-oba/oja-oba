#!/usr/bin/env bash
set -e

echo "=== GitHub Actions self-hosted runner test ==="
echo "Running on host: $(hostname)"
echo "Current user: $(whoami)"
echo "Current directory: $(pwd)"

# Show that we received the secret as an env variable (DON'T do this in production!)
if [ -z "$MY_SECRET_TOKEN" ]; then
  echo "❌ MY_SECRET_TOKEN is NOT set."
  exit 1
else
  echo "✅ MY_SECRET_TOKEN is set (value is hidden in real setups)."
  # For real usage, DON'T echo the actual value. This is just a demo.
  echo "Secret length: ${#MY_SECRET_TOKEN}"
fi

echo "✅ Script finished successfully."