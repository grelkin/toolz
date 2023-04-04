# Shell Script Manager

Minimalistic command line utility to manage your shell scripts. Inspired by
[sub](https://github.com/qrush/sub).

Features:

 * Library management (shared code what can be `source`d later)
 * Script management
 * Script execution helper
 * Shell completions (fish)

## Usage

### Quick Start

#### Create a new library `my-lib`

#### Create and execute a new command `my-cmd`

#### Remove everything

## Installation

[![basher install](https://www.basher.it/assets/logo/basher_install.svg)](https://www.basher.it/package/)

```
$ basher install grelkin/toolz
```

## Configuration

### Fish

```fish
# config.fish

if command -v toolz > /dev/null
  status is-interactive; and source (toolz init fish | psub)
end
```

This initializes completions and creates an alias `alias t="toolz run"`.
