{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    discord
    zapzap
    telegram-desktop
  ];
}
