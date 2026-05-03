{ pkgs, username, ... }:
{
  home-manager.users.${username} = {
    home.packages = with pkgs; [
      notion-app-enhanced
      appflowy
    ];
  };
}
