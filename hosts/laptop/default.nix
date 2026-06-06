{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/core
    ../../modules/services

    ../../modules/desktop
    ../../modules/desktop/hyprland.nix
    ../../modules/desktop/i3.nix

    ../../modules/programs/cli
    ../../modules/programs/gui
    ../../modules/programs/gui/gaming.nix

    ../../modules/virtualisation
  ];

  networking.hostName = "nixos";
}
