# Shell Script Manager

Minimalistic command line utility to manage your shell scripts. Inspired by
[sub](https://github.com/qrush/sub).

Features:

 * Library management (shared code what can be `source`d later)
 * Script management
 * Script execution helper
 * Shell completions (fish)

## Usage

![Usage](https://github.com/grelkin/toolz/blob/master/assets/toolz-1.gif?raw=true)

### Quick Start

#### Create a new library `my-lib`

![Create a new library](https://github.com/grelkin/toolz/blob/master/assets/toolz-2.gif?raw=true)

#### Create and execute a new command `my-cmd`

![Create and execute a new command](https://github.com/grelkin/toolz/blob/master/assets/toolz-3.gif?raw=true)

#### Remove everything

![Remove everything](https://github.com/grelkin/toolz/blob/master/assets/toolz-4.gif?raw=true)

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

---

Made with [Bashly](https://bashly.dannyb.co/) and [VHS](https://github.com/charmbracelet/vhs).
