{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    yazi
    resvg
    poppler-utils
    ffmpeg-headless
    imagemagick
    _7zz
  ];
}
