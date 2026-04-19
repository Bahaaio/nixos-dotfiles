{ pkgs, ... }:

{
  imports = [
    ./modules
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
