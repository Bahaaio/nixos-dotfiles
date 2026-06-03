{ pkgs, ... }:

{
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;

      extraPackages = with pkgs; [
        libva
        intel-media-driver
      ];
    };

    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };

    cpu.intel.updateMicrocode = true;
  };
}
