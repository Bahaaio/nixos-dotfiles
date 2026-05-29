{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    yazi
    resvg
    poppler
    ffmpeg
    imagemagick
    p7zip
  ];
}
