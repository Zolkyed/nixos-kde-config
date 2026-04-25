{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Multimedia
    gimp
    pavucontrol

    ## Communication
    discord

    ## Browser
    brave

    ## Video Editing, DaVinci Resolve Free Edition
    davinci-resolve
    openshot-qt
    flowblade

    ## Office
    libreoffice


    thunderbird-bin

    ## Utility
    dconf-editor
    mission-center # GUI resources monitor
    gparted
    qbittorrent

    # translation
    dialect
  ];

  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-backgroundremoval
      obs-pipewire-audio-capture
    ];
  };
}
