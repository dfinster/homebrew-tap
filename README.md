# Homebrew Tap for Branch Wrangler

This repository contains the Homebrew formula for [Branch Wrangler](https://github.com/dfinster/branch-wrangler), a cross-platform TUI for managing local Git branches with GitHub integration.

## Installation

### Using the Custom Tap

```bash
# Add the tap
brew tap dfinster/tap

# Install branch-wrangler
brew install branch-wrangler
```

### One-liner Installation

```bash
brew install dfinster/tap/branch-wrangler
```

## Usage

After installation, you can run Branch Wrangler from anywhere:

```bash
branch-wrangler
```

## Supported Platforms

- **macOS**: Apple Silicon (ARM64) and Intel (x86_64)
- **Linux**: ARM64 and x86_64 (via Homebrew on Linux)

## Updating

```bash
# Update the tap and formula
brew update

# Upgrade to the latest version
brew upgrade branch-wrangler
```

## Uninstalling

```bash
# Remove the application
brew uninstall branch-wrangler

# Remove the tap (optional)
brew untap dfinster/tap
```

## Development

### Testing the Formula

```bash
# Audit the formula
brew audit --strict dfinster/tap/branch-wrangler

# Test installation
brew install --build-from-source dfinster/tap/branch-wrangler

# Run tests
brew test dfinster/tap/branch-wrangler
```

### Formula Structure

The formula supports multiple platforms and architectures:

- **macOS ARM64**: Primary supported platform
- **macOS Intel**: Intel-based Macs
- **Linux ARM64**: ARM-based Linux systems
- **Linux x86_64**: Intel/AMD-based Linux systems

### Automatic Updates

The formula is automatically updated when new releases are published to the main repository. The GitHub Actions workflow handles:

1. Downloading release artifacts
2. Updating SHA256 checksums
3. Committing and pushing formula changes
4. Running validation tests

## Support

For issues related to:
- **Installation/Homebrew**: Report here in this tap repository
- **Application bugs**: Report in the main [branch-wrangler repository](https://github.com/dfinster/branch-wrangler/issues)

## License

This tap is licensed under the same terms as Branch Wrangler (MIT License).