{ pkgs, ... }:

{
  imports = [
    ./modules/cli.nix
    ./modules/dev.nix
    ./modules/networking.nix
    ./modules/desktop.nix
    ./modules/virtualization.nix
    ./hardware-configuration.nix
  ];

  time.timeZone = "Africa/Cairo";

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";

  users.users.bahaa = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
  };

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "25.11";
}
