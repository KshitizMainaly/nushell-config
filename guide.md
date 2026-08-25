# Nushell Config (WezTerm + Vi Mode)

Personal Nushell configuration optimized for WezTerm on Windows.

## Setup

1. Install [Nushell](https://github.com/nushell/nushell) >= 0.110
2. Install dependencies:
   - [zoxide](https://github.com/ajeetdsouza/zoxide) — smart `cd`
   - [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh) — prompt theme
   - [lazygit](https://github.com/jesseduffield/lazygit) — git TUI
   - [yazi](https://github.com/sxyazi/yazi) — file manager
   - [helix](https://github.com/helix-editor/helix) — editor (`hx`)
   - [ffmpeg](https://ffmpeg.org/) — media conversion
   - [fastfetch](https://github.com/fastfetch-cli/fastfetch) — system info
3. Copy `config.nu` to `~/.config/nushell/` (or `%APPDATA%/nushell/` on Windows)

## Features

### Vi Mode

Edit mode is set to `vi`. Key bindings:

| Key         | Mode       | Action                    |
|-------------|------------|---------------------------|
| `Esc`       | insert     | Switch to normal mode     |
| `v`         | normal     | Enter visual mode         |
| `0`         | normal     | Start of line             |
| `4`         | normal     | End of line               |
| `Shift+U`   | normal     | Redo                      |
| `x`         | normal     | Delete character under cursor |
| `Alt+d`     | normal     | Delete word forward       |

**Visual mode**: `v` + motions (`e`, `b`, `w`, `h`, `l`) extend selection. Then `d` to delete, `c` to change, `y` to yank.

> **Important**: Do NOT override `b` or `w` with custom `{ edit: movewordleft }` bindings — this breaks visual mode selection extension. The reedline defaults handle both normal and visual mode correctly.

### Aliases

| Alias | Command | Description          |
|-------|---------|----------------------|
| `nn`  | `exec nu` | New Nushell instance |
| `ll`  | `ls --long` | Long listing       |
| `lz`  | `lazygit` | Git TUI             |
| `yz`  | `yazi`   | File manager         |
| `ff`  | `fastfetch` | System info       |

### Custom Commands

- **`define <word>`** — Dictionary lookup via API
- **`wrn [name]`** — Rename WezTerm workspace
- **`img <file>`** — Preview image inline in WezTerm
- **`pookie`** — Ollama chat with gemma3:1b

### GIF Tools

- **`gifpeek search <query>`** — Search & download random GIF from Klipy API
- **`gifpeek trending`** — Random trending GIF
- **`gif2img <gif>`** — Convert GIF first frame to PNG
- **`gifhelp`** — Show GIF command help

GIFs auto-preview as PNG in WezTerm using `imgcat`.

### WezTerm Integration

The `pre_prompt` hook:
- Shows current git branch in WezTerm tab title
- Sends desktop toast notification when long commands (>10s) complete
- Reports working directory to Windows Terminal for split-pane inheritance

## Editor

Default editor is Helix (`hx`), used for `buffer_editor` (Nushell's `Ctrl+N` / `edit` command).

## File Structure

```
config.nu   — Main config (aliases, keybindings, commands, hooks)
env.nu      — Environment variables (mostly auto-generated)
```
