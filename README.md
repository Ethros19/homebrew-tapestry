# homebrew-tapestry

Homebrew tap for [Tapestry](https://github.com/Ethros19/tapestry) — archive.org search wrapped in a Sony CHF90 cassette deck.

## Install

```bash
brew install --cask ethros19/tapestry/tapestry
```

That's it. Homebrew handles the quarantine flag automatically, so there's no Gatekeeper prompt and no manual `xattr` step.

## Upgrade

```bash
brew upgrade --cask tapestry
```

Or just let the in-app updater handle it (Settings → Updates → Check now).

## Uninstall

```bash
brew uninstall --cask tapestry
```

Add `--zap` to also wipe drawer data, settings, and saved app state under `~/Library/Application Support/Tapestry`.

## Why a tap?

Tapestry's `.app` is ad-hoc signed but not notarized (no Apple Developer ID yet). A direct DMG download triggers Gatekeeper's misleading "damaged and can't be opened" message because of the `com.apple.quarantine` attribute macOS sets on downloaded files. Homebrew installs the cask via a trusted process and strips that attribute on its own, so the cask path is the cleanest way to install without the friction of running `xattr` manually or clicking through the bundled `Install Tapestry.command` from the DMG.

If you'd rather use the DMG directly, see the [main repo's install instructions](https://github.com/Ethros19/tapestry#sharing-the-dmg) — both paths land at the same place.
