# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-sidebar'
set -g @plugin 'tmux-plugins/tmux-cpu'
set -g @plugin 'tmux-plugins/tmux-popup'
#set -g pane-active-border-style 'fg=#dca7c5'
#set -g pane-border-style 'fg=#55c6f0'
#set -g @plugin 'catppuccin/tmux'
set -g prefix C-s
unbind C-b
bind C-b send-prefix
bind q display-popup
bind T command-prompt -p "Pane name:" "select-pane -T '%%'"
bind-key -n C-r refresh-client
set -g assume-paste-time 1
set -g escape-time 0
#CONFIG

# Force truecolor & prevent fallback greys
set -g default-terminal "tmux-256color"
set -ga terminal-overrides ",*:Tc"

# Status bar base colors
set -g status-style fg=#55c6f0,bg=#1e1e2e

# Inactive windows
set -g window-status-style fg=#55c6f0,bg=#1e1e2e
set -g window-status-format " #[fg=#55c6f0,bg=#1e1e2e]#I:#W "

# Active window
set -g window-status-current-style fg=#dca7c5,bg=#1e1e2e
set -g window-status-current-format " #[fg=#dca7c5,bg=#1e1e2e]#I:#W "

# Copy / mode indicator
set -g mode-style fg=#55c6f0,bg=#1e1e2e

# Pane borders
set -g pane-border-style fg=#55c6f0
set -g pane-active-border-style fg=#dca7c5

# Fill pane separators with background color
set -g pane-border-style fg=#55c6f0,bg=#1e1e2e
set -g pane-active-border-style fg=#dca7c5,bg=#1e1e2e

# Messages
set -g message-style fg=#dca7c5,bg=#1e1e2e
set -g message-command-style fg=#55c6f0,bg=#1e1e2e

# Reset panes to uniform background
set -g window-style bg=#1e1e2e
set -g window-active-style bg=#1e1e2e

# Ensure pane borders match the new bg
set -g pane-border-style fg=#55c6f0,bg=#1e1e2e
set -g pane-active-border-style fg=#dca7c5,bg=#1e1e2e

# CPU plugin position
#set -g status-right-length 100
#set -g status-right "#{cpu_percentage} | #{cpu_temp} | %H:%M "

# IP address
set -g status-right-length 150
# 1. Tell tmux to present itself as a modern terminal.
set -g default-terminal "tmux-256color"

# 2. Force UTF-8 for any client that attaches.
#set -g status-right '#( \
#set -g status-right '#(ip addr show wlan0 2>/dev/null | grep -m 1 inet | awk -F"/" '"'"'{if($1!="") printf "#[fg=#55c6f0]%s:wlan0 ", $1}'"'"') #(ip addr show wlan1 2>/dev/null | grep -m 1 inet | awk -F"/" '"'"'{if($1!="") printf "#[fg=#dca7c5]%s:wlan1 ", $1}'"'"') | #{cpu_percentage} | #{cpu_temp} | %H:%M'
#set -g status-right '#[fg=white]#(ip addr show wlan0 | grep -m 1 inet | awk '{print $2}' | cut -d / -f 1)'
set -g status-right "#[fg=#55c6f0]#(ip -4 addr show wlan1 | grep inet | awk '{print \"wlan1: \"$2}' | cut -d / -f 1) (#(iwconfig wlan1 | grep wlan1 | cut -d : -f 2 | awk -F '\"' '{print $2}')) #[fg=#dca7c5]#(ip -4 addr show wlan0 | grep inet | awk '{print \"wlan0: \"$2}' | cut -d / -f 1) (#(iwconfig wlan0 | grep wlan0 | cut -d : -f 2 | awk -F '\"' '{print $2}'))#[fg=white] | #{cpu_percentage} | %H:%M"
# Pane statuses
set -g pane-border-status top
set -g pane-border-format '#[fg=#55c6f0,align=right] #{pane_title} '
set -g pane-active-border-format '#[fg=#dca7c5,align=right] #{pane_title} '

#CONFIG

run '~/.tmux/plugins/tpm/tpm'
