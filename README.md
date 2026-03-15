# Homebrew Tap

This repository is a Homebrew tap for custom formulae. It currently ships `prenv` and is set up so more formulae can be added later under the same tap.

## Available formulae

| Formula | Description | Source |
| --- | --- | --- |
| `prenv` | Lightweight Bash CLI for inspecting, formatting, and debugging your shell environment | `gvost/prenv` |

As this tap grows, add new formula files to `Formula/` and list them here so the README stays useful.

## Repository layout

```text
Formula/
  prenv.rb
README.md
```

Each file in `Formula/` defines one installable package. This repository stays a single tap even if you add multiple formulae over time.

## Installing from this tap

Once the tap is published, users can install a formula with:

```bash
brew tap <owner>/<tap-repo>
brew install <formula>
```

For the current package set, that will look like:

```bash
brew tap gvost/<tap-repo>
brew install prenv
```

You can also install a formula directly from the tap without a separate `tap` step:

```bash
brew install <owner>/<tap-repo>/<formula>
```

Example:

```bash
brew install gvost/<tap-repo>/prenv
```

Replace `<tap-repo>` with the final repository name you publish.

## Local development

Validate a formula locally before publishing:

```bash
brew install --build-from-source Formula/prenv.rb
brew test prenv
brew audit --strict Formula/prenv.rb
```

If you add more formulae later, run the same checks against each new file in `Formula/`.

## Updating a formula

When a packaged project ships a new release:

1. Update the `url` in the relevant file under `Formula/`.
2. Download the release archive and compute its SHA-256.
3. Replace the `sha256` value in the formula.
4. Re-run the local validation commands.

For `prenv`, the checksum command looks like:

```bash
curl -L https://github.com/gvost/prenv/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
```

## Adding more formulae later

To expand this tap:

1. Add a new Ruby formula file in `Formula/`.
2. Follow Homebrew naming conventions for the class and filename.
3. Add the formula to the table in this README.
4. Test and audit it locally before publishing.

## Current status

`Formula/prenv.rb` still contains a placeholder checksum:

```ruby
sha256 "REPLACE_ME"
```

Replace that value before publishing or installing from the tap.
