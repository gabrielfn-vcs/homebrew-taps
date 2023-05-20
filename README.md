# Personal Homebrew Taps
This repo provides a set of taps to expand the core functionality available in Homebrew.

# Installing these formulae
## To receive updates

`brew install gabrielfn-vcs/taps/<formula>`

Or:

`brew tap gabrielfn-vcs/taps` and then `brew install <formula>`

## Without updates

`brew install https://raw.githubusercontent.com/gabrielfn-vcs/homebrew-taps/main/Formula/<formula>.rb`

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

# Formulae

## Install maven with no openjdk dependency
```
brew install gabrielfn-vcs/taps/maven-noopenjdk
```

### Update Formula to latest `maven` version
When a new version of `maven` is released in Homebrew, this Formula can be updated with the script in `bin/update-formula-maven-noopenjdk`.