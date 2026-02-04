#!/bin/sh
set -e

# Auto-detect Docker network subnets and configure trusted proxies
# Detects all non-loopback IPv4 interfaces
SUBNETS=$(ip -o -f inet addr show | grep -v "127.0.0.1" | awk '{print $4}' | tr '\n' '|')
if [ -n "$SUBNETS" ]; then
  echo "Detected Docker networks: $SUBNETS"
  # Convert to JSON array format
  JSON_ARRAY=$(echo "$SUBNETS" | sed 's/|/","/g' | sed 's/^/["/' | sed 's/$/"]/')
  su - claw -c "openclaw config set gateway.trustedProxies \"$JSON_ARRAY\" --json" 2>/dev/null || {
    echo "Warning: Could not set trustedProxies (config may not exist yet)"
  }
else
  echo "Warning: Could not detect any Docker networks"
fi

# Start SSH daemon (must run as root)
/usr/sbin/sshd

# Run openclaw as claw user
exec su - claw -c "openclaw gateway --bind lan --allow-unconfigured"
