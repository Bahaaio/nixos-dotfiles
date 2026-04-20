{ inputs, pkgs, ... }:

{
  services.displayManager.gdm.enable = true;

  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = true;
    };

    firefox.enable = true;
  };

  environment.systemPackages = with pkgs; [
    wezterm
    kitty

    mpv
    vlc

    waybar
    nautilus
    ulauncher
    hypridle
    hyprpaper
    hyprsunset
    hyprlock
    copyq
    dunst
    wlogout

    libreoffice
    localsend
    obsidian
    discord
    zapzap
    ticktick
    obs-studio
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default

    # dev
    jetbrains.idea
    dbeaver-bin
    postman
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
