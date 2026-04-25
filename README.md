Dotfiles for personal Linux setup
## System Specs
```text
OS: Fedora Linux 43 (Workstation)
Host: ThinkPad T14 Gen 1
Kernel: 6.19.13
WM: SwayFX (wlroots)
Terminal: foot
Shell: zsh
Font: JetBrainsMono Nerd Font
```

## Dependencies

```text
sudo dnf install sway waybar rofi-wayland swaync cliphist wl-clipboard \
network-manager-applet bluez pulsemixer cava python3-i3ipc python3-pywal \
swaybg swaylock swayidle wireplumber
```

```text
Vibecode_Cozy_Dotfiles (Repo)                System Target Path
─────────────────────────────                ──────────────────
├── zshrc                               ───>  ~/.zshrc
│
├── config/                             ───>  ~/.config/
│   ├── ronema/                         ───>      ├── ronema/
│   ├── rofi/                           ───>      ├── rofi/
│   ├── sway/                           ───>      ├── sway/
│   └── waybar/                         ───>      └── waybar/
│
└── local_bin/                          ───>  ~/.local/bin/
    ├── ronema                          ───>      ├── ronema
    ├── autotiling                      ───>      ├── autotiling
    ├── rofi-clipboard-preview          ───>      ├── rofi-clipboard-preview
    ├── waybar-cava.sh                  ───>      ├── waybar-cava.sh
    └── ... (weitere Scripte)            ───>      └── ...
```
