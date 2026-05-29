{ pkgs, ... }:

{
  programs = {
    obs-studio.enable = true;
    gpu-screen-recorder.enable = true;
  };

  environment.systemPackages = with pkgs; [
    mpv
    loupe
    celluloid
  ];
}
