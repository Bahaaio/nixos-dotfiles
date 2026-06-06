{ inputs, pkgs, ... }:

{
  programs.nix-index-database.comma.enable = true;

  environment.systemPackages = with pkgs; [
    gh
    tokei
    tesseract
    openssl
    playerctl
    brightnessctl
    inputs.go-pray.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
