{ pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./hardware.nix
    ./power.nix
    ./users.nix
    ./nix.nix
  ];

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  time.timeZone = "Africa/Cairo";
  i18n.defaultLocale = "en_US.UTF-8";
}
