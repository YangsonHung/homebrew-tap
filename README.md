# Homebrew Tap

Install [EnvDesk](https://github.com/YangsonHung/envdesk) on macOS:

```bash
brew install --cask yangsonhung/tap/envdesk
```

The cask selects the Apple Silicon or Intel package and verifies its SHA-256 checksum. It installs `EnvDesk.app` in the Applications directory.

EnvDesk is ad-hoc signed and not notarized by Apple. After installation, the cask removes the quarantine flag from `EnvDesk.app` only. It does not change system-wide Gatekeeper settings.

See [GitHub Releases](https://github.com/YangsonHung/envdesk/releases) for installers and checksums.

## License

[MIT](LICENSE)
