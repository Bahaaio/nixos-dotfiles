{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gh
    tokei
    tesseract
    openssl
    playerctl
    brightnessctl
  ];
}
