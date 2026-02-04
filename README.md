# OpenClaw Gateway with Pomerium

> **Note**: This project was formerly known as Moltbot and clawd. All references have been updated to OpenClaw.

A containerized deployment of the OpenClaw gateway behind Pomerium for secure, authenticated access to Claude Code.

## Getting Started

For complete setup instructions, configuration options, and troubleshooting, please refer to the comprehensive guide:

**[OpenClaw Gateway Deployment Guide](https://docs.pomerium.com/docs/guides/openclaw-gateway)**

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

For detailed prerequisites, network requirements, and step-by-step instructions, see the [full guide](https://docs.pomerium.com/docs/guides/openclaw-gateway).

## What's Included

- **Pomerium**: Zero-trust authentication proxy on port 443
- **OpenClaw Gateway**: AI assistant that takes action across your digital life
- **Verify**: Pomerium's verification service for testing authentication

## Documentation

All documentation has been consolidated into the comprehensive deployment guide:
- [Setup & Configuration](https://docs.pomerium.com/docs/guides/openclaw-gateway)
- SSH access configuration
- Device pairing
- Security considerations
- Troubleshooting

## Support

For issues or questions, please refer to:
- [OpenClaw Gateway Guide](https://docs.pomerium.com/docs/guides/openclaw-gateway)
- [Pomerium Documentation](https://www.pomerium.com/docs)
- [OpenClaw](https://openclaw.ai)
