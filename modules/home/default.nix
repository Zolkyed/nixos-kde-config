{ ... }:
{
  imports = [
    ./nix-search # nix search tool
    ./packages # other packages
    ./vscode # vscode fork
    ./cava.nix # audio visualizer
    ./fastfetch.nix # fetch tool
    ./fonts.nix # fonts settings
    ./git.nix # version control
    ./gtk.nix # gtk configuration
    ./notion.nix # notion
    ./nvim.nix # neovim configuration
    ./qt-creator.nix # qt creator
    ./ssh.nix
    ./xdg-mimes.nix # xdg config
    ./xorg.nix # xorg configuration
  ];
}
