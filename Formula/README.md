# ctf-rs Homebrew

- [Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
- [Adding to Homebrew](https://docs.brew.sh/Adding-Software-to-Homebrew)
- [Example Blog](https://mvogelgesang.com/blog/20240419/creating-a-simple-homebrew-formula/)

## Homebrew terminology

| term             | description                                                                              | example                                                            |
|------------------|------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| formula          | Homebrew package definition that builds from upstream sources                            | /opt/homebrew/Library/Taps/homebrew/homebrew-core/Formula/f/foo.rb |
| cask             | Homebrew package definition that installs macOS native applications                      | /opt/homebrew/Library/Taps/homebrew/homebrew-cask/Casks/b/bar.rb   |
| prefix           | path in which Homebrew is installed                                                      | /opt/homebrew                                                      |
| keg              | installation destination directory of a given formula version                            | /opt/homebrew/Cellar/foo/0.1                                       |
| rack             | directory containing one or more versioned kegs                                          | /opt/homebrew/Cellar/foo                                           |
| keg-only         | a formula is keg-only if it is not symlinked into Homebrew’s prefix                      | the openjdk formula                                                |
| opt prefix       | a symlink to the active version of a keg                                                 | /opt/homebrew/opt/foo                                              |
| Cellar           | directory containing one or more named racks                                             | /opt/homebrew/Cellar                                               |
| Caskroom         | directory containing one or more named casks                                             | /opt/homebrew/Caskroom                                             |
| external command | brew subcommand defined outside of the Homebrew/brew GitHub repository                   | brew alias                                                         |
| tap              | directory (and usually Git repository) of formulae, casks and/or external commands       | /opt/homebrew/Library/Taps/homebrew/homebrew-core                  |
| bottle           | pre-built keg poured into a rack of the Cellar instead of building from upstream sources | qt--6.5.1.ventura.bottle.tar.gz                                    |
| tab              | information about a keg, e.g. whether it was poured from a bottle or built from source   | /opt/homebrew/Cellar/foo/0.1/INSTALL_RECEIPT.json                  |
| Brew Bundle      | a declarative interface to Homebrew                                                      | brew 'myservice', restart_service: true                            |
| Brew Services    | the Homebrew command to manage background services                                       | brew services start myservice                                      |
