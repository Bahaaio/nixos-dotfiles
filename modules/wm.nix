{ inputs, pkgs, ... }:

{
  imports = [ inputs.silentSDDM.nixosModules.default ];

  programs = {
    silentSDDM = {
      enable = true;
      theme = "default";
    };

    hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };

    obs-studio.enable = true;
    gpu-screen-recorder.enable = true;

    nautilus-open-any-terminal = {
      enable = true;
      terminal = "wezterm";
    };
  };

  xdg.portal = {
    enable = true;

    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
    ];
  };

  environment.systemPackages = with pkgs; [
    wezterm
    walker
    elephant
    waybar
    wttrbar
    nautilus
    hypridle
    hyprpaper
    hyprsunset
    hyprlock
    hyprpicker
    copyq
    dunst
    wlogout
    grim
    slurp
    satty
    pavucontrol
    swayosd
    gpu-screen-recorder-gtk

    # media
    mpv
    celluloid
    loupe

    papers
    gnome-text-editor
    gnome-weather
    gnome-calculator
    libreoffice
    localsend
    obsidian
    discord
    zapzap
    telegram-desktop
    ticktick
    qt6.qtwayland
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    proton-pass
    zathura
    proton-vpn

    # dev
    jetbrains.idea
    dbeaver-bin
    postman
  ];
}
