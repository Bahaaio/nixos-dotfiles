{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vesktop
    zapzap
    telegram-desktop
  ];
}
