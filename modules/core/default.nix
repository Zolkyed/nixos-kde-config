{ ... }:
{
  imports = [
    ./appimage.nix
    ./bootloader.nix
    ./bluetooth.nix
    ./cloudflare-warp.nix
    ./network.nix
    ./nh.nix
    ./kde.nix
    ./login.nix
    ./pipewire.nix
    ./program.nix
    ./security.nix
#   ./nvidia.nix # Imported from desktop
    ./mouse.nix
    ./steam.nix
    ./system.nix
    ./flatpak.nix
    ./user.nix
    ./sched-ext.nix
    ./wayland.nix
    ./virtualization.nix
    ./zram.nix
  ];
}
