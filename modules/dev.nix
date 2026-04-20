{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    clang
    gnumake
    jdk
    maven
    gradle
    go
    fnm
    nodejs_24
    cargo
    python3
    typst
  ];
}
