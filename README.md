# BotOpsy Homebrew tap

```sh
brew install botopsy/tap/hclaro
```

Installs the prebuilt [hclaro](https://github.com/botopsy/hclaro) release archive for macOS (Apple silicon and Intel) and Linux (arm64 and amd64), pinned by SHA-256 to the release checksums. hclaro is in **beta**; see its [beta notes](https://github.com/botopsy/hclaro/blob/master/docs/BETA.md).

The binary is not code-signed. Homebrew does not mark it as downloaded, so Gatekeeper does not block it. Release archives, checksums and build-provenance attestations are on [GitHub Releases](https://github.com/botopsy/hclaro/releases); to check the archive Homebrew installed, run `gh attestation verify "$(brew --cache hclaro)" -R botopsy/hclaro`.

The formula is updated here for each release ([process](https://github.com/botopsy/hclaro/blob/master/docs/RELEASING.md#homebrew-formula)). Report problems in the [hclaro repository](https://github.com/botopsy/hclaro/issues).
