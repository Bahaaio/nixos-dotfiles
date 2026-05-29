{ pkgs, ... }:

{
  programs = {
    gamemode.enable = true;

    gamescope = {
      enable = true;
      capSysNice = true;
    };

    steam = {
      enable = true;
      gamescopeSession.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    mangohud
    # modrinth-app

    # proton-ge
    # lutris
    # protonup-qt
  ];
}
