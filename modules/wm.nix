{ inputs, pkgs, ... }:

{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  services.displayManager.sddm = {
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
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-hyprland ];
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
    grim
    slurp
    satty
    flameshot
    swaybg
    swayosd
    gnome-calculator

    libreoffice
    localsend
    obsidian
    discord
    zapzap
    pavucontrol
    ticktick
    obs-studio
    qt6.qtwayland
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    proton-pass
    proton-vpn

    # dev
    jetbrains.idea
    dbeaver-bin
    postman

    # themes
    sddm-astronaut
    adwaita-qt
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  gtk = {
    enable = true;

    theme = {
      name = "Adwaita-dark";
      package = pkgs.adwaita-gtk-theme;
    };

    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };
  };

  qt = {
    enable = true;
    platformTheme = "gtk";
    style = "adwaita-dark";
  };

  programs.dconf.profiles.user.databases = [
    {
      settings."org/gnome/desktop/interface" = {
        gtk-theme = "Adwaita";
        # icon-theme = "Flat-Remix-Red-Dark";
        # font-name = "Noto Sans Medium 11";
        # document-font-name = "Noto Sans Medium 11";
        # monospace-font-name = "Noto Sans Mono Medium 11";
      };
    }
  ];

  environment.sessionVariables = {
    GTK_THEME = "Adwaita:dark";
    QT_QPA_PLATFORMTHEME = "gtk3";
  };
}
