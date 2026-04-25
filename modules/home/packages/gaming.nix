{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Utils
    gamemode
    mangohud
    goverlay
    wine
    winetricks
    protontricks
    protonup-qt
    # inputs.nix-gaming.packages.${pkgs.system}.wine-ge

    # mouse setup
    piper

    ## Celeste
    # celeste-classic
    # celeste-classic-pm

    ## Emulation
    # sameboy
    # snes9x
    # yuzu
    # dolphin-emu
    pcsx2
    retroarch-free
  ];
}
