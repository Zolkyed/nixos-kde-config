{ pkgs, ... }:
{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      systemd-boot.configurationLimit = 10;
    };
    initrd.systemd.enable = true;
    initrd.verbose = false;
    kernelModules = [ "hid-nintendo" ];
    supportedFilesystems = [ "ntfs" ];
    consoleLogLevel = 0;
    kernelParams = [
      "quiet"
      "loglevel=0"
      "systemd.show_status=false"
      "rd.udev.log_level=3"
      "vt.global_cursor_default=0"
      "plymouth.use-simpledrm"
      "splash"
    ];
    plymouth = {
      enable = true;
      theme = "bgrt";
    };
    tmp = {
      useTmpfs = true;
      cleanOnBoot = true;
    };
  };
}