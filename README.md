## Tmux Exit

- TODO: Add introduction and screenshot

## Usage

### Key Bindings

- prefix + Q
  - Close and save all vim windows in each tmux session's panes and windows

- TODO: Add information on configuring key binding

## Installation

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'ddelnano/tmux-vim-exit'

Hit `prefix + I` to fetch the plugin and source it. You should now be able to
use the plugin.

### Manual Install

Clone the repo

```bash
git clone https://github.com/ddelnano/tmux-vim-exit ~/clone/path
```

Add the following line to your tmux.conf file

```
run-shell ~/clone/path/yank.tmux
```

Source your tmux config

```
tmux source-file path/to/.tmux.conf
```
