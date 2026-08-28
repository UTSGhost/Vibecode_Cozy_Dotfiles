# Dotfiles for personal Linux setup (Clean Flat Vibe)

## System Specs
```text
OS: Fedora Linux 43 (Workstation)
Host: ThinkPad T14 Gen 1
Kernel: 6.19.13
WM: SwayFX (wlroots)
Terminal: kitty
Shell: zsh
File Manager: yazi
Theme: Clean Flat Vibe (Deep Blue, Cyber Purple, Cyber Pink)
Main Font: Nunito Bold (Waybar, Rofi & Hyprlock)
Mono Font: JetBrainsMono Nerd Font (Terminal & Icons)
```

## Dependencies

```text
sudo dnf install sway waybar rofi-wayland swaync cliphist wl-clipboard \
network-manager-applet bluez pulsemixer cava python3-i3ipc python3-pywal \
swaybg hyprlock swayidle wireplumber yazi kitty
```
and the fonts listed above

## Directory Structure
```text
Dotfiles_Repo (Branch: clean-flat-vibe)      System Target Path
───────────────────────────────────────      ──────────────────
├── zshrc                               ───>  ~/.zshrc
│
├── config/                             ───>  ~/.config/
│   ├── hypr/                           ───>      ├── hypr/   
│   ├── kitty/                          ───>      ├── kitty/
│   ├── rofi/                           ───>      ├── rofi/
│   ├── ronema/                         ───>      ├── ronema/
│   ├── sway/                           ───>      ├── sway/
│   ├── swaync/                         ───>      ├── swaync/
│   ├── waybar/                         ───>      ├── waybar/
│   └── yazi/                           ───>      └── yazi/
│
└── local_bin/                          ───>  ~/.local/bin/
    ├── autotiling                      ───>      ├── autotiling
    ├── rofi-clipboard-preview          ───>      ├── rofi-clipboard-preview
    ├── ronema                          ───>      ├── ronema
    ├── waybar-cava.sh                  ───>      ├── waybar-cava.sh
    └── ... (more scripts)              ───>      └── ...
```
