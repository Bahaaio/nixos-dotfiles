{ pkgs, ... }:

{
  networking = {
    hostName = "nixos";
    wireless.iwd.enable = true;

    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };
}
