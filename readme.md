# Tall Stack Quick Setup Script

This repo contains a script (tallstack.sh) that allows you to take a fresh default Laravel 8 installation and turn it into a Tall stack.

## What is installs

- TailwindCSS
- AlpineJS
- Livewire
- TailwindCSS Forms
- TailwindCSS Typography

# Usage

First clone the repo wherever you'd like and run `chmod +X ./tallstack.sh`.

Then go into your `.bashrc`, `.zshrc`, or other, and add this:

`alias tallinstall="/path/to/this/folder/tallstack.sh"`

Then close the terminal and reopen it. You'll now be able to go into a fresh installation and run `tallinstall` in a brand new default Laravel install, and it'll run.