{ pkgs, ... }:

{
  services.displayManager.gdm.enable = true;

  programs = {
    zsh.enable = true;

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

    ulauncher
    nautilus
    waybar
    hyprpaper
    hypridle
    hyprlock
    hyprpicker
    wlogout

    mpv
    vlc

    localsend
    obsidian
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
