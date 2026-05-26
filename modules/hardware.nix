{ pkgs, ... }:

{
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;

      extraPackages = with pkgs; [
        intel-media-driver
        mesa
        libva
      ];
    };

    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
  };
}
