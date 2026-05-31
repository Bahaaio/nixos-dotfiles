{ pkgs, ... }:

{
  programs = {
    obs-studio.enable = true;
    gsr = {
      enable = true;
      ui.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    mpv
    loupe
    celluloid
  ];
}
