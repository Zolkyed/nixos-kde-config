{ ... }:
{
  imports = [
    ./android-studio.nix # android studio
    ./browser.nix # Brave based browser
    ./cava.nix # audio visualizer
    ./davinci-resolve.nix # video editing
    ./discord.nix # discord
    ./docker.nix # docker configuration
    ./fastfetch.nix # fetch tool
    ./fonts.nix # fonts settings
    ./gaming.nix # packages related to gaming
    ./git.nix # version control
    ./gtk.nix # gtk configuration
    ./notion.nix # notion
    ./xorg.nix # xorg configuration
    ./nix-search/nix-search.nix # TUI to search nixpkgs
    ./nvim.nix # neovim configuration
    ./packages # other packages
    ./qt-creator.nix # qt creator
    ./plasma-manager.nix
    ./ssh.nix
    ./vscode # vscode fork
    ./xdg-mimes.nix # xdg config
  ];
}
