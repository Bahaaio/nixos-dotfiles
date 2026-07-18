{ pkgs, ... }:

{
  programs = {
    gamemode.enable = true;

    gamescope = {
      enable = true;
      capSysNice = true;
      args = [ "--rt" ];
    };

    steam = {
      enable = true;
      gamescopeSession.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    mangohud
    prismlauncher

    # proton-ge
    # lutris
    # protonup-qt
  ];
}
