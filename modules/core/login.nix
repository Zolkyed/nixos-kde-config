{ pkgs, ... }:
{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = ''
          ${pkgs.greetd.tuigreet}/bin/tuigreet \
            --time \
            --time-format "%H:%M" \
            --asterisks \
            --asterisks-char "*" \
            --cmd "startplasma-wayland" \
            --width 40 \
            --window-padding 10 \
            --container-padding 5 \
            --prompt "password: " \
            --prompt-padding 1 \
            --theme "border=darkgray;text=white;prompt=white;time=gray;action=white;button=white;container=black;input=white"
        '';
        user = "greeter";
      };
    };
  };

  security.pam.services.greetd.enableGnomeKeyring = true;
}