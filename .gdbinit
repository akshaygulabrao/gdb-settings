set auto-load safe-path /
set confirm off
set disassembly-flavor intel

# Enable TUI mode
tui enable

# Create custom layout named "main" with:
# - Horizontal split for asm and regs on top
# - Command window at bottom
tui new-layout main {-horizontal asm 1 regs 1} 2 status 0 cmd 1

# Switch to our custom layout
layout main

# Set the TUI border style
set tui border-kind ascii

# Some helpful TUI settings
set tui compact-source on
set tui tab-width 4

# Display settings
set print pretty on
set pagination off

# Command history settings


# Register group setting (show general registers by default)
tui reg general
# Previous settings...

# Fix for stepping commands
define hook-stop
    refresh
end

# Optional: if you want to auto-refresh after every command
set hook-stop on
