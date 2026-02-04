# OpenClaw Gateway with Pomerium

> **Note**: This project was formerly known as Moltbot and clawd. All references have been updated to OpenClaw.

A containerized deployment of the [OpenClaw](https://openclaw.ai/) gateway behind Pomerium for secure, authenticated access to Claude Code.

## Getting Started

For complete setup instructions, configuration options, and troubleshooting, please refer to the comprehensive guide:

**[OpenClaw Gateway Deployment Guide](https://deploy-preview-2084--pomerium-docs.netlify.app/docs/guides/openclaw-gateway)**

## Quick Setup

```bash
# 1. Clone this repository
git clone <repository-url>
cd mr-claw

# 2. Configure environment
cp .env.example .env
# Edit .env with your Pomerium Zero token and cluster domain

# 3. Generate SSH keys
./setup-ssh.sh

# 4. Start services
docker-compose up -d
```

For detailed prerequisites, network requirements, and step-by-step instructions, see the [full guide](https://deploy-preview-2084--pomerium-docs.netlify.app/docs/guides/openclaw-gateway).

## What's Included

- **Pomerium**: Zero-trust authentication proxy on port 443
- **OpenClaw Gateway**: AI assistant that takes action across your digital life
- **Verify**: Pomerium's verification service for testing authentication

## Architecture

OpenClaw is distributed as an npm package and doesn't provide an official Docker image. This repository includes a custom Dockerfile (`openclaw/Dockerfile`) that builds a gateway container with:

- OpenClaw CLI installed from npm
- SSH server with Pomerium User CA integration
- Git and Docker CLI for agent operations
- Persistent workspace mounted at `/claw/workspace`

The gateway runs on an internal Docker network with none of those ports exposed to the internet. All access is proxied through Pomerium. SSH traffic via port 2200 and HTTPS traffic via port 443—providing zero-trust authentication. See the [deployment guide](https://deploy-preview-2084--pomerium-docs.netlify.app/docs/guides/openclaw-gateway) for detailed architecture and security considerations. Where you deploy, port 22 will be open most likely. Once Pomerium is set up, you can turn off port 22 access if desired (recommended).

## Documentation

All documentation has been consolidated into the comprehensive deployment guide:
- [Setup & Configuration](https://deploy-preview-2084--pomerium-docs.netlify.app/docs/guides/openclaw-gateway)
- SSH access configuration
- Device pairing
- Security considerations
- Troubleshooting

## Support

For issues or questions, please refer to:
- [OpenClaw Gateway Guide](https://deploy-preview-2084--pomerium-docs.netlify.app/docs/guides/openclaw-gateway)
- [Pomerium Documentation](https://www.pomerium.com/docs)
- [OpenClaw](https://openclaw.ai)
