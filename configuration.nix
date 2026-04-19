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
  };

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  system.stateVersion = "25.11";
}
