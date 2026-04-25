{
  config,
  lib,
  pkgs,
  username,
  ...
}:

{
  services = {
    cloudflare-warp = {
      enable = true;
    };
  };
}
