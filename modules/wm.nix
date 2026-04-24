{ inputs, pkgs, ... }:

{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "sddm-astronaut-theme";
    extraPackages = [ pkgs.sddm-astronaut ];
  };

  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = true;
    };

    firefox.enable = true;
    obs-studio.enable = true;
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
    kitty

    mpv
    vlc

    inputs.walker.packages.${pkgs.stdenv.hostPlatform.system}.default
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
    proton-vpn

    # dev
    jetbrains.idea
    dbeaver-bin
    postman

    sddm-astronaut
  ];

  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "wezterm";
  };

  # walker binary cache
  nix.settings = {
    extra-substituters = [
      "https://walker.cachix.org"
      "https://walker-git.cachix.org"
    ];
    extra-trusted-public-keys = [
      "walker.cachix.org-1:fG8q+uAaMqhsMxWjwvk0IMb4mFPFLqHjuvfwQxE4oJM="
      "walker-git.cachix.org-1:vmC0ocfPWh0S/vRAQGtChuiZBTAe4wiKDeyyXM0/7pM="
    ];
  };
}
