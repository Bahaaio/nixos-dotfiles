{ pkgs, ... }:

{
  imports = [
    ./modules
    ./hardware-configuration.nix
  ];

  time.timeZone = "Africa/Cairo";

  i18n.defaultLocale = "en_US.UTF-8";

  users.users.bahaa = {
    isNormalUser = true;
    description = "Bahaa Mohamed";
    extraGroups = [
      "netowrkmanager"
      "wheel"
      "micled" # allow controlling mic-mute LED
    ];
  };

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  nixpkgs.config.allowUnfree = true;

  # for running prebuilt binaries (e.g. Mason LSPs)
  programs.nix-ld.enable = true;

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
