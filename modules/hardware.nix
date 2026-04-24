{ pkgs, ... }:

{
  hardware.graphics = {
    enable = true;

    extraPackages = with pkgs; [
      intel-media-driver
      mesa
      libva
    ];
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };
}
