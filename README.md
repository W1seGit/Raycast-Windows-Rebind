# Raycast Windows Rebind

A simple AutoHotkey v2 script that remaps the Windows key to open Raycast (Alt+Space) while preserving all native Win+key shortcuts.

## ✨ Features

- **Single Win key press** → Opens Raycast (sends Alt+Space)
- **Win+key combinations** → Work normally (no functionality lost)
- **Blocks Start Menu** → Win key alone never opens the Start menu

### Preserved Shortcuts

| Shortcut | Action |
|----------|--------|
| `Win+R` | Run dialog |
| `Win+D` | Show desktop |
| `Win+E` | File Explorer |
| `Win+L` | Lock screen |
| `Win+I` | Settings |
| `Win+S` | Search |
| `Win+V` | Clipboard history |
| `Win+X` | Quick Link menu |
| `Win+Tab` | Task View |
| `Win+.` | Emoji picker |
| `Win+Arrow` | Window snapping |
| `Win+1-9` | Taskbar apps |
| `Win+Shift+S` | Screenshot |
| `Win+Ctrl+D` | New virtual desktop |
| `Win+Ctrl+Left/Right` | Switch desktops |

## 📥 Installation

### Option 1: Download Executable (Recommended)

1. Go to the [Releases](https://github.com/YOUR_USERNAME/Raycast-Windows-Rebind/releases) page
2. Download `RaycastRebind.exe`
3. Run it!

### Option 2: Run from Source

1. Install [AutoHotkey v2](https://www.autohotkey.com/)
2. Download `main.ahk`
3. Double-click to run

## 🚀 Start on Startup

### Method 1: Startup Folder (Easiest)

1. Press `Win+R` and type `shell:startup`
2. Create a shortcut to `RaycastRebind.exe` (or `main.ahk`) in this folder
3. Done! It will start automatically on login

### Method 2: Task Scheduler (More Control)

1. Open **Task Scheduler** (`taskschd.msc`)
2. Click **Create Basic Task**
3. Name it "Raycast Rebind"
4. Trigger: **When I log on**
5. Action: **Start a program**
6. Browse to `RaycastRebind.exe`
7. ✅ Check "Run with highest privileges" (optional, for admin apps)
8. Finish

## ⚙️ Changing the Keybind

By default, pressing Win opens Raycast via `Alt+Space`. To change this, edit the variable at the top of `main.ahk`:

```ahk
LAUNCHER_HOTKEY := "!{Space}"   ; Alt+Space (default for Raycast)
```

Change it to your desired hotkey and save. Examples:

| Value | Hotkey |
|-------|--------|
| `"!{Space}"` | Alt+Space (default) |
| `"^{Space}"` | Ctrl+Space |
| `"+{Space}"` | Shift+Space |
| `"!a"` | Alt+A |
| `"{F12}"` | F12 |

### Hotkey Syntax Reference

| Symbol | Key |
|--------|-----|
| `!` | Alt |
| `^` | Ctrl |
| `+` | Shift |
| `#` | Win |
| `{Space}` | Spacebar |
| `{Enter}` | Enter |
| `{F1}`-`{F12}` | Function keys |

## 🛑 Stopping the Script

- **Right-click** the green `H` icon in the system tray → **Exit**
- Or use Task Manager to end the process

## 📄 Requirements

- Windows 10/11
- [Raycast](https://www.raycast.com/) configured with `Alt+Space` hotkey (default)
- AutoHotkey v2.0+ (only if running from source)

## 📜 License

MIT License - feel free to modify and distribute!
