{ pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./users.nix
  ];

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  time.timeZone = "Africa/Cairo";
  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "25.11";
}
