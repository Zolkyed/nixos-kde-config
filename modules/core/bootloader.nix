{ pkgs, ... }:
{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      systemd-boot.configurationLimit = 10;
    };
    initrd.systemd.enable = true;
    kernelPackages = pkgs.linuxPackages_latest;
    kernelModules = [ "hid-nintendo" ];
    supportedFilesystems = [ "ntfs" ];
    kernelParams = [ "quiet" "systemd.show_status=auto" "rd.udev.log_level=3" "plymouth.use-simpledrm" ];
    consoleLogLevel = 3;
    plymouth = {
      enable = true;
      theme = "spinner";
    };
    tmp = {
      useTmpfs = true;
      cleanOnBoot = true;
    };
  };
}